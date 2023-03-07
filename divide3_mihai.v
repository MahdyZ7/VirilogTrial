// good module with 50% duty cycle
module divide3_mihai(
    input reset,
    input clk,
    output out
);

	reg mid_1;
	reg mid_2;

	always @(posedge clk) begin
		if (~reset) begin
        	mid_1 <= 0;
        	mid_2 <= 0;
    	end else begin
			mid_1 <= ~mid_1 & ~mid_2;
			mid_2 <= ~mid_2 | mid_1;
		end
	end
	assign out = (clk & mid_2) | mid_1;	
	
endmodule
