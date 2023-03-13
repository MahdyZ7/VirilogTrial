/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP5-5
// Date      : Thu Mar  9 13:30:58 2023
/////////////////////////////////////////////////////////////


module CLKDivider_divideby2_1 ( rst_n, clk_rx, clk_tx );
  input rst_n, clk_rx;
  output clk_tx;
  wire   N4;

  SC8T_DFFQX1_CSC28L clk_tx_reg ( .D(N4), .CLK(clk_rx), .Q(clk_tx) );
  SC8T_NR2IAX1_MR_CSC28L U3 ( .A(rst_n), .B(clk_tx), .Z(N4) );
endmodule


module CLKDivider_divide3_mihai_1 ( reset, clk, out );
  input reset, clk;
  output out;
  wire   mid_1, mid_2, N6, N7, n1, n2;

  SC8T_DFFQX1_CSC28L mid_1_reg ( .D(N6), .CLK(clk), .Q(mid_1) );
  SC8T_DFFQX1_CSC28L mid_2_reg ( .D(N7), .CLK(clk), .Q(mid_2) );
  SC8T_INVX1_MR_CSC28L U3 ( .A(reset), .Z(n1) );
  SC8T_NR3X1_CSC24L U4 ( .A(mid_1), .B(mid_2), .C(n1), .Z(N6) );
  SC8T_INVX1_MR_CSC28L U5 ( .A(mid_1), .Z(n2) );
  SC8T_AOI21X1_MR_CSC24L U6 ( .B1(mid_2), .B2(n2), .A(n1), .Z(N7) );
  SC8T_AO21IAX1_MR_CSC28L U7 ( .B1(mid_2), .B2(clk), .A(n2), .Z(out) );
endmodule


module CLKDivider_divide5_mihai_1 ( reset, clk, out );
  input reset, clk;
  output out;
  wire   mid_2, mid_3, mid_1, N5, N6, N7, n1, n2;

  SC8T_DFFQX1_CSC28L mid_2_reg ( .D(N6), .CLK(clk), .Q(mid_2) );
  SC8T_DFFQX1_CSC28L mid_1_reg ( .D(N5), .CLK(clk), .Q(mid_1) );
  SC8T_DFFQX1_CSC28L mid_3_reg ( .D(N7), .CLK(clk), .Q(mid_3) );
  SC8T_INVX1_MR_CSC28L U3 ( .A(mid_2), .Z(n2) );
  SC8T_INVX1_MR_CSC28L U4 ( .A(reset), .Z(n1) );
  SC8T_NR2X1_CSC24L U5 ( .A(n2), .B(n1), .Z(N7) );
  SC8T_NR3X1_CSC24L U6 ( .A(mid_3), .B(mid_1), .C(n1), .Z(N6) );
  SC8T_AN3X1_MR_CSC28L U7 ( .A(n2), .B(mid_3), .C(reset), .Z(N5) );
  SC8T_AO21IAX1_MR_CSC28L U8 ( .B1(mid_3), .B2(clk), .A(n2), .Z(out) );
endmodule


module CLKDIVS ( reset, clk, div2, div3, div5 );
  input reset, clk;
  output div2, div3, div5;


  CLKDivider_divideby2_1 divide2 ( .rst_n(reset), .clk_rx(clk), .clk_tx(div2)
         );
  CLKDivider_divide3_mihai_1 divide3 ( .reset(reset), .clk(clk), .out(div3) );
  CLKDivider_divide5_mihai_1 divide5 ( .reset(reset), .clk(clk), .out(div5) );
endmodule

