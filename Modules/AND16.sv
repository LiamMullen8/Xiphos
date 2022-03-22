`include "AND.sv"
module AND16(
  output [15:0]OUT,
  input [15:0]X,
  input [15:0]Y
);
  
  AND a15(OUT[15], X[15], Y[15]);
  AND a14(OUT[14], X[14], Y[14]);
  AND a13(OUT[13], X[13], Y[13]);
  AND a12(OUT[12], X[12], Y[12]);
  AND a11(OUT[11], X[11], Y[11]);
  AND a10(OUT[10], X[10], Y[10]);
  AND a9(OUT[9],   X[9],  Y[9]);
  AND a8(OUT[8],   X[8],  Y[8]);
  AND a7(OUT[7],   X[7],  Y[7]);
  AND a6(OUT[6],   X[6],  Y[6]);
  AND a5(OUT[5],   X[5],  Y[5]);
  AND a4(OUT[4],   X[4],  Y[4]);
  AND a3(OUT[3],   X[3],  Y[3]);
  AND a2(OUT[2],   X[2],  Y[2]);
  AND a1(OUT[1],   X[1],  Y[1]);
  AND a0(OUT[0],   X[0],  Y[0]);
    
endmodule