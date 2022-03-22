// ~(X ^ X)
module NOT(
  output  OUT,
  input X
);
  
  nand(OUT, X, X);
    
  
endmodule