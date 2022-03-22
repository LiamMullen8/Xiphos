`include "DMUX4Way.sv"

module DMUX8Way(
  output OUT1,
  output OUT2, 
  output OUT3, 
  output OUT4,
  output OUT5,
  output OUT6, 
  output OUT7, 
  output OUT8,
  input X,
  input [2:0]s
);
   
  wire C0,C1,C2,C3;
  
  DMUX4Way m0(C0, C1, C2, C3, X, s[2:1]);
  
  DMUX m1(OUT1, OUT2, C0, s[0]);
  DMUX m2(OUT3, OUT4, C1, s[0]);
  DMUX m3(OUT5, OUT6, C2, s[0]);
  DMUX m4(OUT7, OUT8, C3, s[0]);

endmodule