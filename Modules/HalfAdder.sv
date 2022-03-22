`include "AND.sv"
`include "XOR.sv"

module HalfAdder(
  	output s,
  	output c,
	input X,
	input Y
);
  
  XOR x1(s, X, Y);
  AND a1(c, X, Y);
  
endmodule	