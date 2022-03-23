`include "MUX.sv"
`include "DFF.sv"

module Reg1(
  output out,
  input in,
  input ld,
  input clk
);
  
  wire m,d;
  
  MUX m1(m, in, d, ld);
  DFF d1(d, m, clk);
  
  buf(out, d);
  
  
endmodule