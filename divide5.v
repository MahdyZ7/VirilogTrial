// good module without 50% duty cycle
module divide5(
    input reset,
    input clk,
    output reg out
);

	reg [3:0] count;

always @(posedge clk or posedge reset) begin
	if (~reset) begin
        count <= 0;
        out <= 0;
    end else begin
        count <= count + 1;
		if (count == 3)
			out <= 1;
		else if (count == 4) begin
            count <= 0;
        end 
		else if (count == 0)begin
        		out <= 0;
		end
    end
end

endmodule