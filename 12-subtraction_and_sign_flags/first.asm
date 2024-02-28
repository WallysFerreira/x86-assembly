section .data

section .text
global _start

_start:
	mov eax,0x04
	sub eax,0x02

	int 0x80
