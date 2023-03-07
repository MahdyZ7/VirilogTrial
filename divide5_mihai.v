// good module with 50% duty cycle
module divide5_mihai(
    input reset,
    input clk,
    output out
);

	reg mid_1, mid_2, mid_3;

	always @(posedge clk) begin
		if (~reset) begin
        	mid_1 <= 0;
        	mid_2 <= 0;
			mid_3 <= 0;
    	end else begin
			mid_1 <= ~mid_2 & mid_3;
			mid_2 <= ~mid_1 & ~mid_3;
			mid_3 <= mid_2;
		end
	end
	assign out = (clk & mid_3) | mid_2;	
	
endmodule
