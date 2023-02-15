module testbench();
	reg clk;
	output wire q;
	output wire q1;
	output reg rst;
	
// initial
// clk = 1'b0;
	
	// divide_by_3 dut(
	// 	.clk(clk),
	// 	.q(q)
	// );
	divide_by_3 dut (clk, q);
	// divideby2 dut (rst,clk, q);
	divideby3 dut2 (clk, q1);

	initial begin
		rst = 0;
	  clk = 0;
	  forever #1 clk = ~clk;
	end
	
	initial begin
		$dumpvars;
		$monitor("Time: %0d ns, clk: %b, q: %b q1: %b", $time, clk, q, q1);
		rst =0;
		#3 rst =1;
	  #100 $finish;
	end
endmodule
