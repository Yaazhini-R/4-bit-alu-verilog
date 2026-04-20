# 4-bit ALU Design using Verilog

This repository presents the design and simulation of a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

An ALU is a fundamental component in digital systems and processors that performs arithmetic and logical operations based on control signals.

**Features**
- 4-bit input operands (A and B)
- Supports multiple operations:
  - Addition
  - Subtraction
  - AND
  - OR
  - XOR
  - NOT
- Generates output along with carry/borrow flag
- Designed using Verilog HDL
- Verified using testbench simulation


**Working Principle**
The ALU takes two 4-bit inputs (A, B) and a control signal (opcode).

Based on the opcode, it performs different operations:

| Opcode | Operation     |
|--------|--------------|
| 000    | Addition      |
| 001    | Subtraction   |
| 010    | AND           |
| 011    | OR            |
| 100    | XOR           |
| 101    | NOT (A)       |

The result is produced as a 4-bit output.


**Simulation**
The design is tested using a Verilog testbench.  
Different input combinations are applied and outputs are verified using waveform analysis.

**Tools Used**
- Verilog HDL
- Xilinx Vivado / ModelSim / Cadence


**Output**
(Add your waveform screenshot here)

**Conclusion**
The 4-bit ALU was successfully designed and simulated.  
This project demonstrates core digital design concepts and Verilog implementation.
