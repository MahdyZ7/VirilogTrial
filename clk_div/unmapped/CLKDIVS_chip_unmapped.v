/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : S-2021.06-SP5-5
// Date      : Thu Mar  9 12:36:28 2023
/////////////////////////////////////////////////////////////


module divideby2 ( rst_n, clk_rx, clk_tx );
  input rst_n, clk_rx;
  output clk_tx;
  wire   N0, N1, N2, N3, N4;

  \**SEQGEN**  clk_tx_reg ( .clear(1'b0), .preset(1'b0), .next_state(N4), 
        .clocked_on(clk_rx), .data_in(1'b0), .enable(1'b0), .Q(clk_tx), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C12 ( .DATA1(1'b0), .DATA2(N3), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N4) );
  GTECH_BUF B_0 ( .A(N2), .Z(N0) );
  GTECH_BUF B_1 ( .A(rst_n), .Z(N1) );
  GTECH_NOT I_0 ( .A(rst_n), .Z(N2) );
  GTECH_NOT I_1 ( .A(clk_tx), .Z(N3) );
endmodule


module divide3_mihai ( reset, clk, out );
  input reset, clk;
  output out;
  wire   N0, N1, mid_1, mid_2, N2, N3, N4, N5, N6, N7, N8, N9;

  \**SEQGEN**  mid_1_reg ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid_1), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid_2_reg ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid_2), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C16 ( .DATA1(1'b0), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N6) );
  GTECH_BUF B_0 ( .A(N3), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C17 ( .DATA1(1'b0), .DATA2(N5), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N7) );
  GTECH_NOT I_0 ( .A(mid_2), .Z(N2) );
  GTECH_NOT I_1 ( .A(reset), .Z(N3) );
  GTECH_AND2 C24 ( .A(N8), .B(N2), .Z(N4) );
  GTECH_NOT I_2 ( .A(mid_1), .Z(N8) );
  GTECH_OR2 C26 ( .A(N2), .B(mid_1), .Z(N5) );
  GTECH_OR2 C27 ( .A(N9), .B(mid_1), .Z(out) );
  GTECH_AND2 C28 ( .A(clk), .B(mid_2), .Z(N9) );
endmodule


module divide5_mihai ( reset, clk, out );
  input reset, clk;
  output out;
  wire   N0, N1, mid_2, mid_3, N2, N3, mid_1, N4, N5, N6, N7, N8, N9, N10, N11
;

  \**SEQGEN**  mid_3_reg ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid_3), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid_1_reg ( .clear(1'b0), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid_1), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid_2_reg ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid_2), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C16 ( .DATA1(1'b0), .DATA2(N3), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N5) );
  GTECH_BUF B_0 ( .A(N2), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C17 ( .DATA1(1'b0), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N6) );
  SELECT_OP C18 ( .DATA1(1'b0), .DATA2(mid_2), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N7) );
  GTECH_NOT I_0 ( .A(reset), .Z(N2) );
  GTECH_AND2 C24 ( .A(N8), .B(mid_3), .Z(N3) );
  GTECH_NOT I_1 ( .A(mid_2), .Z(N8) );
  GTECH_AND2 C26 ( .A(N9), .B(N10), .Z(N4) );
  GTECH_NOT I_2 ( .A(mid_1), .Z(N9) );
  GTECH_NOT I_3 ( .A(mid_3), .Z(N10) );
  GTECH_OR2 C29 ( .A(N11), .B(mid_2), .Z(out) );
  GTECH_AND2 C30 ( .A(clk), .B(mid_3), .Z(N11) );
endmodule


module CLKDIVS ( reset, clk, div2, div3, div5 );
  input reset, clk;
  output div2, div3, div5;


  divideby2 divide2 ( .rst_n(reset), .clk_rx(clk), .clk_tx(div2) );
  divide3_mihai divide3 ( .reset(reset), .clk(clk), .out(div3) );
  divide5_mihai divide5 ( .reset(reset), .clk(clk), .out(div5) );
endmodule

