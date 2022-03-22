// ~(~X ^ ~Y)
module OR(
  output OUT,
  input X, Y
);
  
  wire c1;
  wire c2;
  
  nand(c1, X, X);
  nand(c2, Y, Y);
  nand(OUT, c1, c2);
    
endmodule