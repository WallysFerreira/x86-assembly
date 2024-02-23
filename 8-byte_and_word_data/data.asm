section .data
    num DB 1
    num2 DB 2   ; both variables will be stored next to each other.
                ; now there is a 32 bit block of memory that is set to 0x00000201

section .text
global _start

_start:
    mov ebx,[num]   ; accessing all 32 bits causes the whole 32 bit block of memory to be stored in the register

    mov ebx,0       ; reseting the register

    mov bl,[num]    ; now accessing an 8 bits chunk of the register, only num is written since it is 8 bits long

    mov eax,1
    int 0x80
