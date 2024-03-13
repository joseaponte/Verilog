`timescale 1ns/1ps

module adder_tb;

reg adder_1 = 0;
reg adder_2 = 0;
wire out;

adder addition(.addend_a(adder_1),.addend_b(adder_2),.sum_c(out));

initial begin
        $dumpfile("results.vcd");
        $dumpvars(0,adder_tb);

        #10
        adder_1 = 0;
        adder_2 = 0;
        #10
        adder_1 = 0;
        adder_2 = 1;
        #10
        adder_1 = 1;
        adder_2 = 0;
        #10
        adder_1 = 1;
        adder_2 = 1;
        #10
        $finish();
end

endmodule