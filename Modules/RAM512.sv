`include "DMUX8Way16.sv"
`include "MUX8Way16.sv"
`include "16bitReg.sv"

module RAM512(
  output [16:0]out,
  input [16:0]in,
  input [8:0]addr,
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
    
  DMUX8Way16 dx1(d1,d2,d3,d4,d5,d6,d7,d8, in, addr[8:6]);
  
  RAM64 R1(r1, d1, addr[5:0], ld, clk);
  RAM64 R2(r2, d2, addr[5:0], ld, clk);
  RAM64 R3(r3, d3, addr[5:0], ld, clk);
  RAM64 R4(r4, d4, addr[5:0], ld, clk);
  RAM64 R5(r5, d5, addr[5:0], ld, clk);
  RAM64 R6(r6, d6, addr[5:0], ld, clk);
  RAM64 R7(r7, d7, addr[5:0], ld, clk);
  RAM64 R8(r8, d8, addr[5:0], ld, clk);
  
  MUX8Way16 mx1(out, r1,r2,r3,r4,r5,r6,r7,r8, addr[8:6]);
  
endmodule