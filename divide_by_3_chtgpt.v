module divide_by_3_chtgpt (
	input		rst_n,
	input		clk_in,
	output reg	clk_out
);

reg [1:0] count;

always @(posedge clk_in) begin
	if (~rst_n) begin
		count <= 0;
		clk_out <= 0;
	end
	else begin
		count <= count + 1;
		if (count == 2) begin
			count <= 0;
			clk_out <= ~clk_out;
		end
	end
end

endmodule
