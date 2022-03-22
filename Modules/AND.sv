// ~(~(X ^ Y))
module AND(
  output OUT,
  input X, Y

);
  
  wire c1;
  
  nand(c1, X, Y);
  nand(OUT, c1, c1);
    
  
endmodule