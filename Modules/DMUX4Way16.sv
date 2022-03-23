`include "DMUX16.sv"

module DMUX4Way16(
  output [15:0]OUT1,
  output [15:0]OUT2,
  output [15:0]OUT3,
  output [15:0]OUT4,
  input [15:0]X, 
  input [1:0]s
);
   
  wire [15:0]c0;
  wire [15:0]c1;
  wire [15:0]c2;
  wire [15:0]c3;

  
  DMUX16 m1(c0, c1, X, s[1]);
  
  DMUX16 m3(OUT1, OUT2, c0, s[0]);
  DMUX16 m2(OUT3, OUT4, c1, s[0]);
  

endmodule