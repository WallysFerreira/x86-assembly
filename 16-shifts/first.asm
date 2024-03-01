section .data
	var DB 12

section .text
global _start

_start:
	mov eax,0b0101
	shr eax,1

	shr byte [var],2

	int 0x80
