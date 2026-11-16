:- module(cases, [title/1, case/3]).
:- use_module('../prolog/mnnexplain').
:- use_module(engine).
title('mnnexplain').
expr_g(0, E) :- !, rnd_pick([x, y, z, 0, 1, 2, 3], E).
expr_g(D, E) :- D1 is D - 1, ( rnd_chance(25) -> expr_g(0, E) ; rnd_pick([+, *, -], Op), expr_g(D1, A), expr_g(D1, B), E =.. [Op, A, B] ).
case(simplify, [E], simplify_result) :- expr_g(3, E).
case(explain, [E], explain_of) :- expr_g(2, E).
case(trace_length, [E], trace_length) :- expr_g(3, E).
simplify_result(E, R) :- simplify(E, R, _).
explain_of(E, S) :- simplify(E, _, T), explain(T, S).
trace_length(E, N) :- simplify(E, _, T), length(T, N).
