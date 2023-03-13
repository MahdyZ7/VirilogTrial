// good module without 50% duty cycle
module divide3_trail(
    input reset,
    input clk,
    output out
);

	reg [1:0] count;
	assign out = count[1] & ~count[0];

always @(posedge clk or posedge reset) begin
	if (~reset) begin
        count <= 0;
    end else begin
        count <= count + 1;
		if (count == 2) begin
            count <= 0;
        end 
    end
end

endmodule