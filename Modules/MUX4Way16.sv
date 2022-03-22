`include "MUX16.sv"

module MUX4Way16(
  output [15:0]OUT,
  input [15:0]W,
  input [15:0]X, 
  input [15:0]Y, 
  input [15:0]Z,
  input [1:0]s
);
   
  wire [15:0]c0;
  wire [15:0]c1;
  
  MUX16 m3(c0,  W, X, s[0]);
  MUX16 m2(c1,  Y, Z, s[0]);
  
  MUX16 m1(OUT,  c0,  c1, s[1]);

endmodule