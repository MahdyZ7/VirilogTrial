module divideby2 (
  input      rst_n,
  input      clk_rx,
  output reg clk_tx
);

always @ (posedge clk_rx) begin
  if (~rst_n) begin
    clk_tx <= 1'b0;
  end
  else begin
    clk_tx <= ~clk_tx;
  end
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