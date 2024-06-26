# Ripple-Carry-Adder-16-bits

## Ripple Carry Adder (RCA)

This project implements a 16-bit Ripple Carry Adder (RCA) using Verilog. The RCA is designed to add two 16-bit binary numbers, producing a 16-bit sum and a carry-out bit. The adder uses a simple and efficient method of propagating carry bits through each bit of the input numbers.

### Features

- **16-bit Adder:** Capable of adding two 16-bit binary numbers.
- **Parameterized Design:** Easily scalable to different bit-widths by modifying the `N` parameter.
- **Full Adder Modules:** Uses a generate block to instantiate full adder modules for each bit.
- **Testbench Included:** Comprehensive testbench to verify the functionality of the RCA.

### Module Description

#### RCA Module

The RCA module takes two 16-bit inputs (`a` and `b`), a carry-in (`cin`), and produces a 16-bit sum (`sum`) and a carry-out (`cout`). 

- **Inputs:**
  - `a` and `b`: 16-bit binary numbers to be added.
  - `cin`: Carry-in bit for cascading adders.
  
- **Outputs:**
  - `sum`: 16-bit binary sum of `a` and `b`.
  - `cout`: Carry-out bit from the most significant bit addition.

The module uses a generate block to create a chain of full adder modules, where the carry-out from each bit is propagated to the next bit.

### Testbench

A testbench (`RCA_tb`) is provided to verify the functionality of the RCA module. The testbench applies various test cases to ensure correct operation, including scenarios where the carry-out bit is generated.

### Usage

1. Clone the repository.
2. Open the project in your preferred Verilog simulation environment (e.g., Xilinx Vivado).
3. Simulate the `RCA_tb` testbench to verify the design.

### Example Test Case

```verilog
x = 16'hffff; y = 16'h0001; c_in = 0;
```

In this test case, the addition of `x` and `y` results in `0x10000`, causing the `cout` to be 1, indicating an overflow.
