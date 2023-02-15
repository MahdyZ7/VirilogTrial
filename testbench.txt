module testbench();
    reg a;
    reg b;
    wire sum;
    wire carry;

    adder add(
        .a(a),
        .b(b),
        .s(sum),
        .c(carry)
    );

	initial begin
        $dumpvars;
        a = 0;
        b = 0;
        #5
        a = 1;
        b = 0;
        #5
        a = 0;
        b = 1;
        #5
        a = 1;
        b = 1;
        #5
        $finish;
    end
endmodule