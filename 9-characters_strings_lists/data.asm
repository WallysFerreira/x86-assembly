section .data
    char DB 'A'
    list DB 1,2,3,4,-1
    string DB "Test"

section .text
global _start

_start:
    mov ebx,[char]
    mov ecx,[list]
    mov edx,[string]

    mov eax,1
    int 0x80