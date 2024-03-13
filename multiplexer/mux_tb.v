`timescale 1ns/1ps

module mux_tb;
    reg [3:0] input_a = 3;
    reg [3:0] input_b = 2;
    reg selector = 0;
    reg clock = 0;
    wire [3:0] out;
    
    mux UUT(.a(input_a),.b(input_b),.sel(selector),.outp(out),.clk(clock));

    initial begin
        $dumpfile("result.vcd");
        $dumpvars(0,mux_tb);

        #10
        selector = 0;
        clock = 0;

        #10
        selector = 0;
        clock = 1;

        #10
        selector = 1;
        clock = 0;

        
        #10
        selector = 1;
        clock = 1;

        #10
        selector = 1;
        clock = 0;

        #10
        selector = 1;
        clock = 1;

        $finish() ;
    end
endmodule