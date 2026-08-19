# 4-Bit ALU – Verilog

## Description

A **4-bit Arithmetic Logic Unit (ALU)** designed using Verilog HDL.
The ALU performs arithmetic and logical operations based on a 3-bit selection input.

## Features

* 4-bit inputs: `A` and `B`
* 3-bit operation select
* 4-bit output result
* Carry flag
* Zero flag
* Verilog testbench included
* Suitable for simulation using Icarus Verilog and GTKWave

## Folder Structure

```text
4-bit-ALU/
│
├── src/
│   └── alu_4bit.v
│
├── tb/
│   └── alu_4bit_tb.v
│
├── output/
│   └── output.txt
│
└── README.md
```

## ALU Operations

| ALU_Sel | Operation | Description |
| ------- | --------- | ----------- |
| `000`   | ADD       | A + B       |
| `001`   | SUB       | A - B       |
| `010`   | AND       | A & B       |
| `011`   | OR        | A | B       |
| `100`   | XOR       | A ^ B       |
| `101`   | NOT       | ~A          |
| `110`   | INC       | A + 1       |
| `111`   | DEC       | A - 1       |

## Inputs

| Signal    | Width | Description         |
| --------- | ----- | ------------------- |
| `A`       | 4-bit | First input         |
| `B`       | 4-bit | Second input        |
| `ALU_Sel` | 3-bit | Operation selection |

## Outputs

| Signal   | Width | Description              |
| -------- | ----- | ------------------------ |
| `Result` | 4-bit | ALU operation result     |
| `Carry`  | 1-bit | Carry output             |
| `Zero`   | 1-bit | High when result is zero |

## Simulation Using Icarus Verilog

Open the terminal inside the project folder.

### Step 1: Compile

```bash
iverilog -o alu_sim src/alu_4bit.v tb/alu_4bit_tb.v
```

### Step 2: Run

```bash
vvp alu_sim
```

### Step 3: Save Output

```bash
vvp alu_sim > output/output.txt
```

## Expected Output

```text
==============================================
          4-BIT ALU TESTBENCH
==============================================
Time    A       B       Sel     Result  Carry   Zero
----------------------------------------------
10      0101    0011    000     1000    0       0
20      1001    0011    001     0110    0       0
30      1100    1010    010     1000    0       0
40      1100    1010    011     1110    0       0
50      1100    1010    100     0110    0       0
60      1010    0000    101     0101    0       0
70      0111    0000    110     1000    0       0
80      1000    0000    111     0111    0       0
==============================================
           SIMULATION COMPLETED
==============================================
```

## Learning Outcomes

This project demonstrates:

* Verilog module design
* Combinational logic
* `case` statements
* Arithmetic operations
* Bitwise operations
* Testbench creation
* Simulation and verification
* GitHub project organization

## Author

**Nikhila**

## License

This project is created for educational and learning purposes.
