`include "DMUX.sv"

module DMUX4Way(
  output OUT1,
  output OUT2, 
  output OUT3, 
  output OUT4,
  input X,
  input [1:0]s
);
   
  wire C0;
  wire C1;
  
  DMUX m0(C0, C1, X, s[1]);
  
  DMUX m1(OUT1, OUT2, C0, s[0]);
  DMUX m2(OUT3, OUT4, C1, s[0]);

endmodule