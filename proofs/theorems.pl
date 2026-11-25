% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/mnnexplain').

% Domain: every expression of depth up to 2 over x, y, 0, 1, 2 with +, * and -; x and y from -2..2.
expr(0, E) :- member(E, [x, y, 0, 1, 2]).
expr(D, E) :- D > 0, D1 is D - 1, ( expr(D1, E) ; member(Op, [+, *, -]), expr(D1, A), expr(D1, B), E =.. [Op, A, B] ).
env([x-X, y-Y]) :- between(-2, 2, X), between(-2, 2, Y).

% 1. Every rule keeps the value, wherever it applies.
theorem(rules_keep_value) :- forall(( expr(2, E), copy_term(E, E0), rule(_, E0, T1, _), E0 =@= E, env(Env) ), ( value(E, Env, A), value(T1, Env, B), A =:= B )).

% 2. Simplifying keeps the value, and each step in the trace does too.
theorem(simplify_keeps_value) :-
    forall(( expr(2, E), simplify(E, R, T), env(Env) ), ( value(E, Env, A), value(R, Env, B), A =:= B, forall(member(step(_, P, Q), T), ( value(P, Env, V1), value(Q, Env, V2), V1 =:= V2 )) )).

% 3. The trace replays: each step starts where the last ended, from the input to the result.
theorem(trace_replays) :- forall(( expr(2, E), simplify(E, R, T) ), replays(E, T, R)).
replays(E, [], R) :- E == R.
replays(E, [step(_, P, Q)|Ts], R) :- P == E, replays(Q, Ts, R).

% 4. The result is fully simplified, and the explanation has one sentence per step.
theorem(result_irreducible_and_explained) :- forall(( expr(2, E), simplify(E, R, T) ), ( irreducible(R), explain(T, S), ( T == [] -> true ; split_string(S, ".", " ", Parts), exclude(==(""), Parts, Ss), length(Ss, N), length(T, N) ) )).

% 5. Every rule, conditions included, applies somewhere in the domain: no rule is dead.
% (rule/4 is not asked for its rules with unknown parts: the rules with a condition would not be offered)
names([plus_zero, zero_plus, times_one, one_times, times_zero, zero_times, minus_self, double, fold, fold_times, minus_zero, fold_minus]).
theorem(every_rule_applies) :- names(Ns), forall(member(N, Ns), ( expr(2, E), simplify(E, _, T), memberchk(step(N, _, _), T) -> true )).
