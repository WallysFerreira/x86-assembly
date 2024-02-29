# MUL instruction

The _MUL_ instruction receives only one argument, that is the second value of the multiplication. It has to be inside a register or a variable, it's not possible to pass the literal value.

This instruction always uses the A register as the first value of the operation. 

## Examples

### Using variable

```asm
section .data
	var DB 4		; set var to 4

section .text
global _start

_start:
	mov eax,4		; prepare the A register for the multiplication
	mul byte [var]		; specify it's a byte operation using the value inside var

	int 0x80
```

### Using register

```asm
section .text
global _start

_start:
	mov eax,4		; prepare the A register
	mov ebx,4		; prepare the B register

	mul ebx			; use B register for the multiplication

	int 0x80
```
