`include "HalfAdder.sv"

module FullAdder(
  	output Sum,
  	output Cout,
  	input Cin,
	input X,
	input Y
);
  
  wire s1;
  wire c1;
  wire c2;
  
  HalfAdder h1(s1, c1, X, Y);
  HalfAdder h2(Sum, c2, s1, Cin);
  
  OR o1(Cout, c1, c2);
  
endmodule	