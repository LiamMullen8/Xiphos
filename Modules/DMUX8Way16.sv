`include "DMUX4Way16.sv"
`include "DMUX16.sv"

module DMUX8Way16(
  output [15:0]OUT1,
  output [15:0]OUT2,
  output [15:0]OUT3,
  output [15:0]OUT4,
  output [15:0]OUT5,
  output [15:0]OUT6,
  output [15:0]OUT7,
  output [15:0]OUT8,
  input [15:0]X,
  input [2:0]s
);
   
  wire [15:0]c0;
  wire [15:0]c1;
  wire [15:0]c2;
  wire [15:0]c3;
  
  
  MUX4Way16 m0(c0,c1,c2,c3, X, s[1:0]);
	
  MUX16 m1(OUT1, OUT2, c0, s[2]);
  MUX16 m2(OUT3, OUT4, c1, s[2]);
  MUX16 m3(OUT5, OUT6, c2, s[2]);
  MUX16 m4(OUT7, OUT8, c3, s[2]);

endmodule