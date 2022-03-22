`include "FullAdder.sv"

module ADD16(
  output [15:0]s,
  input [15:0]x,
  input [15:0]y
);
  wire [15:0]c;
  
  FullAdder FA1(s[0], 	c[0],	0, 	   x[0],  y[0]);	
  FullAdder FA2(s[1], 	c[1],	c[0],  x[1],  y[1]);
  FullAdder FA3(s[2], 	c[2],	c[1],  x[2],  y[2]);
  FullAdder FA4(s[3], 	c[3],	c[2],  x[3],  y[3]);
  FullAdder FA5(s[4], 	c[4],	c[3],  x[4],  y[4]);
  FullAdder FA6(s[5], 	c[5],	c[4],  x[5],  y[5]);
  FullAdder FA7(s[6], 	c[6],	c[5],  x[6],  y[6]);
  FullAdder FA8(s[7], 	c[7],	c[6],  x[7],  y[7]);
  FullAdder FA9(s[8], 	c[8],	c[7],  x[8],  y[8]);
  FullAdder FA10(s[9], 	c[9],	c[8],  x[9],  y[9]);
  FullAdder FA11(s[10], c[10], 	c[9],  x[10], y[10]);
  FullAdder FA12(s[11], c[11], 	c[10], x[11], y[11]);
  FullAdder FA13(s[12], c[12], 	c[11], x[12], y[12]);
  FullAdder FA14(s[13], c[13], 	c[12], x[13], y[13]);
  FullAdder FA15(s[14], c[14], 	c[13], x[14], y[14]);
  FullAdder FA16(s[15], c[15], 	c[14], x[15], y[15]);

endmodule