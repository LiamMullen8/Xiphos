`include "MUX.sv"

module MUX16(
  output [15:0]OUT,
  input [15:0]X,  
  input [15:0]Y,
  input s
);
  
  MUX m15(OUT[15], X[15], Y[15], s);
  MUX m14(OUT[14], X[14], Y[14], s);
  MUX m13(OUT[13], X[13], Y[13], s);
  MUX m12(OUT[12], X[12], Y[12], s);
  MUX m11(OUT[11], X[11], Y[11], s);
  MUX m10(OUT[10], X[10], Y[10], s);
  MUX m9(OUT[9],  X[9],  Y[9], s);
  MUX m8(OUT[8],  X[8],  Y[8], s);
  MUX m7(OUT[7],  X[7],  Y[7], s);
  MUX m6(OUT[6],  X[6],  Y[6], s);
  MUX m5(OUT[5],  X[5],  Y[5], s);
  MUX m4(OUT[4],  X[4],  Y[4], s);
  MUX m3(OUT[3],  X[3],  Y[3], s);
  MUX m2(OUT[2],  X[2],  Y[2], s);
  MUX m1(OUT[1],  X[1],  Y[1], s);
  MUX m0(OUT[0],  X[0],  Y[0], s);

endmodule