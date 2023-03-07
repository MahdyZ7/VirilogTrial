// good module without 50% duty cycle
module divide3(
    input reset,
    input clk,
    output reg out
);

	reg [1:0] count;

always @(posedge clk or posedge reset) begin
	if (~reset) begin
        count <= 0;
        out <= 0;
    end else begin
        count <= count + 1;
		if (count == 2) begin
            count <= 0;
			out <= 1;
        end 
		else if (count == 0)begin
        		out <= 0;
		end
    end
end

endmodule