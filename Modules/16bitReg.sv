`include "MUX.sv"
`include "DFF.sv"
`include "1bitReg.sv"

module Reg16(
  output [15:0]out,
  input [15:0]in,
  input ld,
  input clk
);
  
  Reg1 r15(out[15], in[15], ld, clk);
  Reg1 r14(out[14], in[14], ld, clk);
  Reg1 r13(out[13], in[13], ld, clk);
  Reg1 r12(out[12], in[12], ld, clk);
  Reg1 r11(out[11], in[11], ld, clk);
  Reg1 r10(out[10], in[10], ld, clk);
  Reg1 r9(out[9],  in[9],  ld, clk);
  Reg1 r8(out[8],  in[8],  ld, clk);
  Reg1 r7(out[7],  in[7],  ld, clk);
  Reg1 r6(out[6],  in[6],  ld, clk);
  Reg1 r5(out[5],  in[5],  ld, clk);
  Reg1 r4(out[4],  in[4],  ld, clk);
  Reg1 r3(out[3],  in[3],  ld, clk);
  Reg1 r2(out[2],  in[2],  ld, clk);
  Reg1 r1(out[1],  in[1],  ld, clk);
  Reg1 r0(out[0],  in[0],  ld, clk);

  
endmodule