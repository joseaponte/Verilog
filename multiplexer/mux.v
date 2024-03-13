module mux(a,b,sel,outp,clk);

    input [3:0] a;
    input [3:0] b;
    input sel;
    output reg [3:0] outp;
    
    input clk;

    //assign clk = 0;

    always @(posedge clk) begin
        outp <= sel ? a : b;
    end

endmodule
