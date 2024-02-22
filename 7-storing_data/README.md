# Storing data

To store data on the _data section it is necessary to provide a name for the data, the size of the data and optionally an initial value or '?' for an uninitialized variable.

## Data sizes

The size of data is declared using one of these aliases:

- DB (Define byte): 1 Byte - 8 bits
- DW (Declare word) 2 Bytes - 16 bits
- DD: 4 bytes - 32 bits
- DQ: 8 bytes - 64 bits
- DT: 10 bytes - 80 bits

## Accessing stored data

In the program, the variable name will be replaced by the address of the stored data. To actually get the value of the variable, the name must be written inside brackets.

