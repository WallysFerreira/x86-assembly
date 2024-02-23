# Accessing registers

When accessing registers, the way their name is written affects which part of the register is getting used.

For example:
- Writing __eax__ means the whole register is being accessed (32 bits in this case).
- Writing only __ax__ accesses only half of the register (16 bits).
- Using __al__ and __ah__ will split __ax__ in a lower and higher half (8 bits each) respectively.

This is valid for all 4 general purpose registers
