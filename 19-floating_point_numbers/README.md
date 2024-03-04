# Floating point numbers

Floating point numbers are divided in single-precision and double-precision.
Double-precision occupies 64 bits of memory while single-precision uses 32 bits, making it usable in x86.

Since these single-precision floating point numbers use 32 bits of memory, a double word is used to define them.

## Registers

It's not possible to deal with floating point numbers with normal registers like eax or ebx.
Instead, the xmm registers are used.
There are 16 xmm registers that can be accessed with their index at the end, like `xmm0`, for the first xmm register, or `xmm5`, for the sixth register.

## Instructions

There are also some special instructions that work with floating point numbers.
They are usually the normal instructions with 'SS' at the end.
Like _MOVSS_ to move values into registers or memory, or _ADDSS_ to add floating point numbers..
