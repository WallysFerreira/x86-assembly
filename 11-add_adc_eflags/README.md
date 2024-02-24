# ADD and ADC instructions

## ADD

The _ADD_ instruction adds some value to the value in a register, and stores the result in that same register.

```asm
add eax,0x10    ; value inside eax + 16, the result will be stored in eax

add ebx,eax     ; value inside ebx + value inside eax, the result will be stored in ebx

```

## ADC

Adds the value in a register to some value and the Carry Flag, then stores the result in the register. 

```asm
mov al,0xFF
add al,0x01 ; this will cause the carry flag to be set.

adc al,0    ; al + 0 + carry flag (was set to 1 by the last instruction)
```
# EFLAGS register

This is a 32-bit wide register in which some bits are used to represent information about the status of the CPU.

- Carry flag (CF): 1 if the last arithmetic operation ended with a carry, 0 if not.
- Parity flag (PF): 1 if the result of the last operation is even, 0 if not.
- Auxilary carry flag (AF): 1 if the last ADD operation had a carry from the 4 LSB to the 4 MSB, 0 if not.
- Zero flag (ZF): 1 if the result of the last arithmetic operation was 0, 0 if not.
- Sign flag (SF): 1 if the MSB was set on the result of the last arithmetic operation, 0 if not. (Means it's a negative number in two's complement)
- Trap flag (TF): When set to 1, the processor will pause after executing each instruction.
- Interrupt enabled flag (IF): When set to 1, the processor will respond to interrupts.
- Direction flag (DF): When set to 1, strings will be read from highest to lowest address (backwards).
- Overflow flag (OF): 1 if the result of the last arithmetic operation was greater than the max number possible to be written in the architecture, 0 if not.