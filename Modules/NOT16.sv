`include "NOT.sv"

module NOT16(
  output [15:0]OUT,
  input [15:0]X
);
  
  nand(OUT[15], X[15], X[15]);
  nand(OUT[14], X[14], X[14]);
  nand(OUT[13], X[13], X[13]);
  nand(OUT[12], X[12], X[12]);
  nand(OUT[11], X[11], X[11]);
  nand(OUT[10], X[10], X[10]);
  nand(OUT[9],  X[9],  X[9]);
  nand(OUT[8],  X[8],  X[8]);
  nand(OUT[7],  X[7],  X[7]);
  nand(OUT[6],  X[6],  X[6]);
  nand(OUT[5],  X[5],  X[5]);
  nand(OUT[4],  X[4],  X[4]);
  nand(OUT[3],  X[3],  X[3]);
  nand(OUT[2],  X[2],  X[2]);
  nand(OUT[1],  X[1],  X[1]);
  nand(OUT[0],  X[0],  X[0]);
    
endmodule