# Verilog 4-Bit Logic Unit

## Overview

This project implements two versions of a **4-bit logic unit using Verilog HDL**. The purpose is to explore bitwise logical operations, combinational circuit design, and operation selection using multiplexing.

These modules serve as foundational components for developing a complete Arithmetic Logic Unit (ALU).

## Implementations

### 1. Basic Logic Unit

Performs four bitwise operations simultaneously, producing separate outputs for each operation.

- **AND:** `A & B`
- **OR:** `A | B`
- **XOR:** `A ^ B`
- **NOT:** `~A`

### 2. Selectable Logic Unit

Uses a 2-bit opcode to select one of four logical operations, producing a single 4-bit result.

| Opcode | Operation |
|---|---|
| `00` | AND |
| `01` | OR |
| `10` | XOR |
| `11` | NOT A |

The circuit uses a combinational `always @(*)` block and a `case` statement to select the output.

## Simulation and Verification

Both designs are tested using Verilog testbenches and **Icarus Verilog**.

To compile and run the basic logic unit:

```powershell
iverilog -g2005 -o basiclogic tb_logic_unit_basic.v
vvp basiclogic
```

To compile and run the selectable logic unit:

```powershell
iverilog -g2005 -o selectlogic tb_logic_unit.v
vvp selectlogic
```

The testbenches verify correct output values for multiple input combinations and opcode selections.

## Tools Used

- Verilog HDL
- Icarus Verilog / VVP
- Visual Studio Code
- Git / GitHub

## Future Improvements

- [ ] Implement parameterized bit widths (8, 16, and 32 bits).
- [ ] Add self-checking testbenches.
- [ ] Analyze synthesized gate-level circuits using Yosys.
- [ ] Integrate the logic unit into a complete ALU.

## Project Purpose

This project develops practical experience in combinational logic, RTL design, and digital hardware verification, with the long-term goal of designing more advanced digital ICs and processor architectures.