module adder(addend_a, addend_b, sum_c);
    input addend_a;
    input addend_b;
    output sum_c;

    assign sum_c = addend_a | addend_b;

endmodule
