section .data

section .text
global _start

_start:
    add eax,0x01

    int 0x80