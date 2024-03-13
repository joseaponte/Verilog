# Simple 2x1 Multiplexer

A simple multiplexer with a 4-bit input, a selector, 4-bit output, a clock

## Modules

### `mux.v`

Multiplexer that changes its output with the positive edge clock

### `mux_tb.v`

Module that instatiates the module `mux.v` as UUT (Unit Under Test)

* Input A => 3
* Input B => 2