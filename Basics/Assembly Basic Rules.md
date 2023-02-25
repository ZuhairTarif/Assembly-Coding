# Assembly Basic Rules

## Written By                                                    ~Zuhair Ahmed

### Naming Rules

- No Space
- . will be always on beginning
- number will not be on beginning
- only ?.@_$% allowed
- no operators -+
- Assembly ignores everything after ;

### Variables

In assembly language, variables can be declared using different data types such as **`db`**, **`dw`**, and **`dd`**. These data types specify the size and format of the data stored in the variable.

1. **`db`** (Define Byte): It is used to define a variable that can store a single byte of data. A byte is 8 bits long and can hold values from 0 to 255. This data type is useful for storing small values, such as characters or small numbers.
2. 1. **`dw`** (Define Word): It is used to define a variable that can store a word of data. A word is 16 bits long and can hold values from 0 to 65535. This data type is useful for storing larger values, such as integers.
3. 1. **`dd`** (Define Doubleword): It is used to define a variable that can store a double word of data. A double word is 32 bits long and can hold values from 0 to 4294967295. This data type is useful for storing even larger values, such as long integers or memory addresses.

Example:

```nasm
my_byte db 10   ; Defines a byte variable named "my_byte" with a value of 10
my_word dw 1234   ; Defines a word variable named "my_word" with a value of 1234
my_doubleword dd 0x12345678   ; Defines a double word variable named "my_doubleword" with a value of 0x12345678
```

### Arrays

Array is just a sequence of bytes or words.
Example:  to define a three-byte array, we write

```nasm
B_ARRAY       DB     10h,20,30h
```

Name B_ARRAY is associated with first byte, B_ARRAY+1 with second and B_ARRAY+2 with third

| B_ARRAY | 200 | 10H |
| --- | --- | --- |
| B_ARRAY+1 | 201 | 20H |
| B_ARRAY+2 | 202 | 30H |

### Character String

An array of ASCII codes.
LETTER     DB     ‘ABC’
LETTER     DB     41h,42h,43h   [ UPPERCASE]
MSG         DB     `HELLO’, 0Ah, 0Dh, ’$’  [combination is also possible]
MSG         DB     48h,45h,4Ch,4Ch,4Fh,0Ah,0Dh,24h

- equ - constant
- xchg - exchange
- inc - add 1
- dec - sub 1
- neg - 2’s complement means 1’s complement+1
- lea - load address of source to destination
- **`ORG`**  is used to set the starting address of a program or section of a program, while **`.stack`**
 is used to reserve space for the program's stack.

### Opcode and Operands

In assembly language, instructions are made up of two main parts: the opcode and the operands.

1. Opcode: The opcode (operation code) is the part of the instruction that specifies the operation to be performed. It is a mnemonic representation of the machine code instruction that the processor will execute. Examples of opcodes include **`mov`**, **`add`**, **`sub`**, **`jmp`**, etc.
2. Operands: The operands are the part of the instruction that specify the data on which the operation will be performed. They can be registers, memory addresses, immediate values, or a combination of these. The operands provide the data that is used by the opcode to perform the operation.

### Program Structure

```nasm
.MODEL SMALL
.STACK 100H  
.DATA
     ; data definitions here
.	CODE MAIN
		MAIN PROC
			;instructions go here
		MAIN ENDP
;other procedures go here
END MAIN
;The last line of the program should be the END directive, followed by the name of main procedure
```

### 8086 Registers

![Untitled](Assembly%20Basic%20Rules/Untitled.png)

### Conditional Jump

In assembly language, a conditional jump is an instruction that changes the flow of control in a program based on the state of the processor's flags register. A conditional jump is typically used to implement branching in a program, where the next instruction executed depends on the outcome of a previous instruction or calculation.

The most common conditional jumps in assembly language are:

- **`JZ`** or **`JE`** (Jump if Zero or Jump if Equal): This instruction jumps to a specified label if the Zero flag is set, indicating that the result of the previous operation was zero.
- **`JNZ`** or **`JNE`** (Jump if Not Zero or Jump if Not Equal): This instruction jumps to a specified label if the Zero flag is not set, indicating that the result of the previous operation was not zero.
- **`JC`** (Jump if Carry): This instruction jumps to a specified label if the Carry flag is set, indicating that the result of the previous operation produced a carry.
- **`JNC`** (Jump if Not Carry): This instruction jumps to a specified label if the Carry flag is not set.
- **`JA`** (Jump if Above): This instruction jumps to a specified label if the Zero flag is not set and the Carry flag is not set, indicating that the result of the previous operation produced a value greater than the second operand.
- **`JAE`** (Jump if Above or Equal): This instruction jumps to a specified label if the Zero flag is not set or the Carry flag is set, indicating that the result of the previous operation produced a value greater than or equal to the second operand.

### Legal Combinations

![Untitled](Assembly%20Basic%20Rules/Untitled%201.png)