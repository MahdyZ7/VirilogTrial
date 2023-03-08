module testbench();
	reg clk;
	output wire q;
	output reg rst;
	output wire q1;
	output wire q2;
	
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
	CLKDIVS dut (rst,clk, q, q1, q2);
	// divide5_mihai dut2 (rst,clk, q1);
	initial begin
		rst = 0;
	  clk = 1;
	  forever #1 clk = ~clk;
	end
	
	initial begin
		$dumpvars;
		$monitor("Time: %0d ns, clk: %b, q: %b q1: %b", $time, clk, q, q1);
		rst =0;
		#2 rst =1;
	  #100 $finish;
	end
endmodule
