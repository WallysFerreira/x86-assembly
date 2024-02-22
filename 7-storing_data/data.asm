section .data
  num DD 5

section .text
global _start

_start:
  mov eax,1
  mov ebx,[num]
  int 0x80
