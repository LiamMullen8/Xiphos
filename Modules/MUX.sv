// ~(~(X ^ S) ^ ~(Y ^ ~S))
module MUX(
  output OUT,
  input X, Y, sel
);
  
  wire c1;
  wire c2;
  wire c3;
  
  // NOT sel
  nand(c1, sel, sel);
  //
  nand(c2, X, c1);
  nand(c3, Y, sel);
  
  nand(OUT, c2, c3);
    
endmodule