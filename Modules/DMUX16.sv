
`include "DMUX.sv"

module DMUX16(
  output [15:0]OUT1,
  output [15:0]OUT2,
  input [15:0]X,  
  input s
);
  
  
  DMUX dm15(OUT1[15], OUT2[15], X[15], s);
  DMUX dm14(OUT1[14], OUT2[14], X[14], s);
  DMUX dm13(OUT1[13], OUT2[13], X[13], s);
  DMUX dm12(OUT1[12], OUT2[12], X[12], s);
  DMUX dm11(OUT1[11], OUT2[11], X[11], s);
  DMUX dm10(OUT1[10], OUT2[10], X[10], s);
  DMUX dm9(OUT1[9],   OUT2[9],  X[9],  s);
  DMUX dm8(OUT1[8],   OUT2[8],  X[8],  s);
  DMUX dm7(OUT1[7],   OUT2[7],  X[7],  s);
  DMUX dm6(OUT1[6],   OUT2[6],  X[6],  s);
  DMUX dm5(OUT1[5],   OUT2[5],  X[5],  s);
  DMUX dm4(OUT1[4],   OUT2[4],  X[4],  s);
  DMUX dm3(OUT1[3],   OUT2[3],  X[3],  s);
  DMUX dm2(OUT1[2],   OUT2[2],  X[2],  s);
  DMUX dm1(OUT1[1],   OUT2[1],  X[1],  s);
  DMUX dm0(OUT1[0],   OUT2[0],  X[0],  s);

endmodule