section .bss
    var RESB 2
    var2 RESW 2

section .text
global _start

_start:
    mov byte [var],2
    mov byte [var + 1], 20

    mov word [var2],10
    mov word [var2 + 2],10

    mov eax,1
    int 0x80