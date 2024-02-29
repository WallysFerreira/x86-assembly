section .data

section .text
global _start

_start:
	mov al,0xFF

	; mul bl
	imul 80h

	int 0x80
