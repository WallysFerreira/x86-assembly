section .data

section .text
global _start

_start:
  mov eax,3
  mov ebx,2

  cmp eax,ebx
  je other_end
  jmp end

other_end:
  mov eax,1
  int 0x80

end:
  mov eax,2
  int 0x80
