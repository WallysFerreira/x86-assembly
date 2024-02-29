section .data

section .text
global _start

_start:
	mov al,0b0101
	mov bl,0b1100
	and al,bl

	mov al,0b0101
	mov bl,0b1100
	or al,bl

	mov al,0b0101
	mov bl,0b1100
	xor al,bl

	mov al,0b0101
	mov bl,0b1100
	not bl
	and bl,0xF

	int 0x80
