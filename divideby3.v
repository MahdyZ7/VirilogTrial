module divideby3 (
	input clk,
	output reg q
);
	reg [2:0] count = 0;
	always @(posedge clk or negedge clk) begin
		if (count == 3)
			q = 1;
		else if (count == 6) begin
	    	q = ~q;
	    	count = 0;
		end
		else if (count == 0)
			q = 0;
		count <= count + 1;
	end
endmodule

	// integer count = 0;
	// always @(posedge clk or negedge clk) begin
	// 	if (count == 3)
	// 		q <= 1;
	// 	else if (count == 6) begin
	//     	q <= 0;
	//     	count = 0;
	// 	end
	// 	else if (count == 0)
	// 		q <= 0;
	// 	count = count + 1;
	// end