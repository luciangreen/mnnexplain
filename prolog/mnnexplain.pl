% mnnexplain: turn each step of a rewrite into a plain-English sentence, for docs and papers.
% simplify/3 rewrites arithmetic step by step with named rules and records the trace;
% explain/2 writes one sentence per step. Each rule is checked to keep the value.
%?- simplify((x + 0) * 1, R, T).      % R = x, T = [step(times_one, ...), step(plus_zero, ...)]
%?- simplify((x + 0) * 1, _, T), explain(T, Text).
%?- simplify(x * (2 * 3) + (y - y), R, _).    % R = x * 6
:- module(mnnexplain, [rule/4, simplify/3, explain/2, value/3, irreducible/1]).
:- use_module(library(lists)).
:- use_module(library(apply)).

% rule(Name, From, To, Why)
rule(plus_zero, X + 0, X, "adding zero changes nothing").
rule(zero_plus, 0 + X, X, "adding to zero gives the other number").
rule(times_one, X * 1, X, "multiplying by one changes nothing").
rule(one_times, 1 * X, X, "one times a number is the number").
rule(times_zero, _ * 0, 0, "anything times zero is zero").
rule(zero_times, 0 * _, 0, "zero times anything is zero").
rule(minus_self, X - Y, 0, "a number minus itself is zero") :- X == Y.
rule(double, X + Y, 2 * X, "a number added to itself is twice it") :- X == Y, X \== 0.
rule(fold, A + B, C, "the numbers are added now, once, instead of every time the code runs") :- number(A), number(B), C is A + B.
rule(fold_times, A * B, C, "the numbers are multiplied now, once") :- number(A), number(B), C is A * B.
rule(minus_zero, X - 0, X, "taking away zero changes nothing").
rule(fold_minus, A - B, C, "the numbers are subtracted now, once") :- number(A), number(B), C is A - B.

% simplify(+Expr, -Result, -Trace): rewrite the outermost-leftmost place a rule applies, until none does.
simplify(E, R, T) :- ( rewrite_once(E, E1, S) -> T = [S|T1], simplify(E1, R, T1) ; R = E, T = [] ).
% the expression is offered to each rule (a copy, so it is never bound), so a rule's condition is
% tested on the real parts; asking for the pattern first would test conditions on unknowns, and fail
rewrite_once(E, E1, step(Name, E, E1)) :- copy_term(E, E0), rule(Name, E0, E1, _), E0 =@= E, !.
rewrite_once(E, E1, Step) :- compound(E), E =.. [F|As], nth0(I, As, A), rewrite_once(A, A1, Step0), !,
    length(Pre, I), append(Pre, [_|Post], As), append(Pre, [A1|Post], As1), E1 =.. [F|As1], Step0 = step(N, _, _), Step = step(N, E, E1).

irreducible(E) :- \+ rewrite_once(E, _, _).

% explain(+Trace, -Text): one sentence per step. The reason is found by offering the rule the step's
% expression (or the part of it the rule rewrote), so rules with a condition give theirs too.
reason(N, A, Why) :- subexpr(A, P), copy_term(P, P0), rule(N, P0, _, Why), P0 =@= P, !.
subexpr(E, E).
subexpr(E, P) :- compound(E), E =.. [_|As], member(A, As), subexpr(A, P).
explain(T, Text) :- maplist([step(N, A, B), S]>>( reason(N, A, Why), format(string(S), "~w becomes ~w, because ~w.", [A, B, Why]) ), T, Ss),
    ( Ss == [] -> Text = "Nothing to simplify." ; atomic_list_concat(Ss, ' ', A0), atom_string(A0, Text) ).

% value(+Expr, +Env, -V): the number, with variables from Env (Name-Value pairs).
value(E, _, E) :- number(E), !.
value(E, Env, V) :- atom(E), !, memberchk(E-V, Env).
value(E, Env, V) :- E =.. [Op, A, B], value(A, Env, X), value(B, Env, Y), ( Op == (+) -> V is X + Y ; Op == (*) -> V is X * Y ; Op == (-) -> V is X - Y ).
