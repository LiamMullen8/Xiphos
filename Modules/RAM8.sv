`include "DMUX8Way16.sv"
`include "MUX8Way16.sv"
`include "16bitReg.sv"

module RAM8(
  output [16:0]out,
  input [16:0]in,
  input [2:0]addr,
  input ld,
  input clk
);

  wire [15:0]d1;
  wire [15:0]d2;
  wire [15:0]d3;
  wire [15:0]d4;
  wire [15:0]d5;
  wire [15:0]d6;
  wire [15:0]d7;
  wire [15:0]d8;
  
  wire [15:0]r1;
  wire [15:0]r2;
  wire [15:0]r3;
  wire [15:0]r4;
  wire [15:0]r5;
  wire [15:0]r6;
  wire [15:0]r7;
  wire [15:0]r8;
  
  DMUX8Way16 dx1(d1,d2,d3,d4,d5,d6,d7,d8, in ,addr); 
  
  Reg16(r1,  d1,  ld, clk);
  Reg16(r2,  d2,  ld, clk);
  Reg16(r3,  d3,  ld, clk);
  Reg16(r4,  d4,  ld, clk);
  Reg16(r5,  d5,  ld, clk);
  Reg16(r6,  d6,  ld, clk);
  Reg16(r7,  d7,  ld, clk);
  Reg16(r8,  d8,  ld, clk);  
  
  MUX8Way16 mx1(out, r1,r2,r3,r4,r5,r6,r7,r8, addr); 
  
endmodule