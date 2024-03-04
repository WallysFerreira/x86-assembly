# Comparison and Jumping

## Comparison

The _CMP_ instruction can be used to compare two values.
It evaluates if the first operand is:

- Greater than the second operand
- Less than the second operand
- Equal to the second operand

The result affects the ZF and SF flags in EFLAGS, since _CMP_ basically subtracts the second operand from the first.

## Jumping

Jumping makes it possible to go to other parts of the program.
It basically redirects the next instruction to be executed.

The _JMP_ instruction will jump to some location **always**.
But it's possible to jump according to flags set on EFLGAS, usually right after a _CMP_ instruction.

- JL: Jump if less than.
- JG: Jump if greater than.
- JE: Jump if equal.
- JNE: Jump if not equal.
- JLE: Jump if less than or equal.
- JGE: Jump if greater than or equal.
