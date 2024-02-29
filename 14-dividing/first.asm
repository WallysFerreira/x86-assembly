section .data
	var DB 0x04

section .text
global _start

_start:
	mov eax,0x20
	div byte [var]

	mov al,0x0E
	div byte [var]

	mov eax,11
	mov ecx,2
	div ecx

	mov ax,11
	mov cx,2
	div cx

	int 0x80
