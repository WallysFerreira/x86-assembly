# DIV instruction

This instruction divides the value in register A by the value passed to it by a variable or another register.

It will store the result of the operation in register A. If there's a remainder, it will be stored either in register D, if the size of the operation takes up the whole A register, or in the next space of the A register.

Similar to the _MUL_ instruction, it will treat every value as unsigned

# IDIV instruction 

Same as the _DIV_ instruction, except it treats values as signed.
