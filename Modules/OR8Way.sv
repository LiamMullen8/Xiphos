`include "OR.sv"
module OR8Way(
  output OUT,
  input [7:0]X
);
  
  wire [5:0] C;
  
  OR o0(C[0], X[0], X[1]);
  OR o1(C[1], X[2],  C[0]);
  OR o2(C[2], X[3],  C[1]);
  OR o3(C[3], X[4],  C[2]);
  OR o4(C[4], X[5],  C[3]);
  OR o5(C[5], X[6],  C[4]);
  OR o6(OUT, X[7],  C[5]);


endmodule