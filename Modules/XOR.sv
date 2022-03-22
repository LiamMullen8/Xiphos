`include "OR.sv"
// (X v Y) ^ ~(X ^ Y)
module XOR(
  output OUT,
  input X, Y
);
  
  wire c1;
  wire c2;
  wire c3;
  wire c4;
  wire c5;
  
  //OR: ~(~X ^ ~Y)
  nand(c1, X, X);
  nand(c2, Y, Y);
  nand(c3, c1, c2);
  
  //NAND: ~(X ^ Y)
  nand(c4, X, Y);
  
  //AND ~(~(X ^ Y))
  nand(c5, c3, c4);
  nand(OUT, c5, c5);   
    
endmodule