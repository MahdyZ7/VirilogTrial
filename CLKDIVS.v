module CLKDIVS(
	input reset,
	input clk,
	output div2,
	output div3,
	output div5
);

	divideby2 divide2(
		.rst_n(reset),
		.clk_rx(clk),
		.clk_tx(div2)
	);

	divide3_mihai divide3(
		.reset(reset),
		.clk(clk),
		.out(div3)
	);

	divide5_mihai divide5(
		.reset(reset),
		.clk(clk),
		.out(div5)
	);

endmodule
