section .data

section .text
global _start

_start:
	mov al,0xFF
	mov bl,0x02

	mul bl

	int 0x80
