module testbench();
	reg clk;
	output wire q;
	output reg rst;
	// output wire q1;
	// output wire q2;
	
// initial
// clk = 1'b0;
	
	// divide_by_3 dut(
	// 	.clk(clk),
	// 	.q(q)
	// );
	// divideby2 dut_2 (rst,clk, q);
	// divide_by_3 dut_3 (clk, q1);
	// divideby3 dut_3_2 (clk, q2);
	// divide_by_3_chtgpt dut_3_3 (rst,clk, q);
	bing_divider dut (rst,clk, q);

	initial begin
		rst = 0;
	  clk = 1;
	  forever #1 clk = ~clk;
	end
	
	initial begin
		$dumpvars;
		$monitor("Time: %0d ns, clk: %b, q: %b", $time, clk, q);
		rst =0;
		#2 rst =1;
	  #100 $finish;
	end
endmodule
