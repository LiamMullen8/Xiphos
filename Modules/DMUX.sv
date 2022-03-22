module DMUX(
  output O1, O2,
  input X, sel
);
  
  wire c1,c2,c3;
  
  //NOT sel
  nand(c1, sel, sel);
  
  nand(c2, X, c1);
  nand(c3, X, sel);
  
  nand(O1, c2,c2);
  nand(O2, c3,c3);
  
endmodule