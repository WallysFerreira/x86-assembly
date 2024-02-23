# Block Starting Symbol

## Declaring

Uninitialized data is declared in the **_.bss_ section** using the format ```<name> RES<size> <length>```

For example to REServe 4 bytes in a memory block named 'variable'
```asm
section .bss
    var RESB 4
```

## Accessing 
Each of these "slots" can be accessed using **offsets of bytes**.

For example, to access the first byte of 'var' declared above, simply use ```var```. To access the second slot, use ```var + 1```, and so on.

If another size were being used, like a word (2 bytes), for example, this offset would be in steps of 2. So, ```var```, ```var + 2```,  ```var + 4```...

## Writing

To write to a previously declared variable using the _mov_ instruction, the assembler needs to know the size of the value being moved into the variable and it cannot infer from the variable.

If it can't find the size of the value, it will spit out an error

```error: operation size not specified```

### Directly specifying the size

It's possible to specify the size directly in the _mov_ instruction, using the name of the size (byte, word, dword)

For example writing 3 to the first byte reserved by var
```asm
section .bss
    var RESB 4

section .text
global _start

_start:
    mov byte [var],3

    mov eax,1
    int 0x80
```

### Moving value to a register

Since the size of a register is already known and it's possible to [divide a register in smaller parts](../8-byte_and_word_data/README.md#accessing-registers), another way to specify size is moving the value to a register and then using the register to move the value into the variable.

Like
```asm
section .bss
    var RESB 4

section .text
global _start

_start:
    mov bl,3        ; moving the value into the byte division of the b register
    mov [var],bl    ; now the assembler knows this is a byte operation

    mov eax,1
    int 0x80
```