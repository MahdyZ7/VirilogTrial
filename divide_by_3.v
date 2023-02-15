module divide_by_3 (
	input clk,
	output reg q
);
	reg [2:0] count = 0;
	always @(posedge clk) begin
		if (count == 2)
			q = 1;
			// count =  count + 1 
		else if (count == 3) begin
	    	q = 0;
	    	count = 0;
	  	end
		count = count + 1;
	end
endmodule