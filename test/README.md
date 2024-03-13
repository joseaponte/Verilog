# Verilog test

This is a simple verilog code to test if iverilog with vscode works.

## Module **adder.v**

The adder.v is a module that containts two inputs as addends and one output as the sum.

## Module **adder_tb.v**

It is a testbench that instatiates the adder.v module and stimulates its inputs.

### Command Line

`iverilog -o adder_tb.vvp adder_tb.v adder.v`

It compiles using iverilog and creates a .vvp file

`vvp adder.tb.vvp`

It creates a dumpfile `result.vcd` with all the variables that were selected on the test bench

A .vcd file ia generated and it can be visualized using vscode (with the proper extension) or using gtkwave

### Variables True Table

| **Addend a** | **Addend b** | **sum c** |
|--------------|--------------|-----------|
| 0            | 0            | 0         |
| 1            | 0            | 1         |
| 0            | 1            | 1         |
| 1            | 1            | 1         |
