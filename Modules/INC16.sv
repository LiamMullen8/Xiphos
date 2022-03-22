`include "FullAdder.sv"

module INC16(
  output [15:0] s,
  input [15:0] X
);
  
  FullAdder(s, X, 1);
  
  
endmodule