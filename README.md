# mnnexplain

turn each step of a rewrite into a plain-English sentence, for docs and papers. simplify/3 rewrites arithmetic step by step with named rules and records the trace; explain/2 writes one sentence per step. Each rule is checked to keep the value.

## Use

```prolog
?- use_module(prolog/mnnexplain).
?- simplify((x + 0) * 1, R, T).      % R = x, T = [step(times_one, ...), step(plus_zero, ...)]
?- simplify((x + 0) * 1, _, T), explain(T, Text).
?- simplify(x * (2 * 3) + (y - y), R, _).    % R = x * 6
```

## Proofs

`proofs/theorems.pl` proves 5 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every expression of depth up to 2 over x, y, 0, 1, 2 with +, * and -; x and y from -2..2.

1. Every rule keeps the value, wherever it applies.
2. Simplifying keeps the value, and each step in the trace does too.
3. The trace replays: each step starts where the last ended, from the input to the result.
4. The result is fully simplified, and the explanation has one sentence per step.
5. Every rule, including those with a condition (a number minus itself, a number added to itself, adding, multiplying or subtracting two numbers), applies somewhere in the domain.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
