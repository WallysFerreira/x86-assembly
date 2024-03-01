# Shifting

Shifting means moving bits of a value to the right or to the left. The last bit that overflows is sent to the carry flag, the other ones are ignored.

The amount of shifting can be changed, like shifting to the left by more than 1 spots. 

This ends up being the same to dividing by factors of 2 (when shifting to the right) and multiplying by factors of 2 (when shifting to the left).

For example:

Shifting `0b0110` to the right by 1 spot would result in `0b0011`.

`0b0110` is `6` in decimal.
Shifting right by 1 is the same as dividing by 2.
`0b0011` is `3` in decimal.

`6/3 = 2`

## SHR and SHL instructions

_SHR_ shifts to the right and _SHL_ shifts to the left, treating the value as unsigned.

Takes two operands: the value to shift and the amount of shifting.

The result of the operation is stored at the first operand.

## SAR and SAL instructions

_SAR_ shifts to the right and _SAL_ shifts to the left, treating the value as signed.

Takes two operands: the value to shift and the amount of shifting.

The result of the operation is stored at the first operand.

