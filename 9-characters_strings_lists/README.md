# Characters

Every data in low level is essentially a number.
It's possible to store a character in memory using single quotes, but the actual value stored is the character's ASCII code. 

For example:
```asm
section .data
    char DB 'A' ; is stored as 65
```

# Lists

When multiple data is stored in memory, their addresses are sequential.
Assembly supports this separating values with commas.

```asm
section .data
    list DB 1,2,3,4 ; 0x04030201
```

The problem is, if there's more data stored in the next block of memory, the program has no way of knowing if it's part of the list or not.

For example: 
```asm
section .data
    list DB 1,2,3,4     ; 0x04030201
    unrelated DB 33     ; 0x00000021
                        ; memory -> 0x04030201 0x00000021
```

That's why a list needs to have a terminator, that can be any value previously decided on. This way, when the program finds that value, it knows the list has ended.

If we use 0 as a list terminator on the example above:
```asm
section .data
    list DB 1,2,3,4,0       ; 0x04030201
    unrelated DB 33         ; 0x00002100
                            ; memory -> 0x04030201 0x00002100
```

# Strings

Strings are lists of characters. Assembly accepts string literals enclosed in double quotes

Like
```asm
section .data
    string DB "Abc",0
```

Strings need a 0 (null character in ASCII) as terminator. 
