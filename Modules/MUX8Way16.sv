`include "MUX4Way16.sv"
`include "MUX16.sv"

module MUX8Way16(
  output [15:0]OUT,
  input [15:0]A,
  input [15:0]B, 
  input [15:0]C, 
  input [15:0]D,
  input [15:0]W,
  input [15:0]X, 
  input [15:0]Y, 
  input [15:0]Z,
  input [2:0]s
);
   
  wire [15:0]c0;
  wire [15:0]c1;
  
  MUX4Way16 m0(c0, A,B,C,D, s[1:0]);
  MUX4Way16 m1(c1, W,X,Y,Z, s[1:0]);
  
  MUX16 m1(OUT, c0, c1, s[2]);

endmodule