module DFF(
  output Q,
  input IN,
  input clk
);
  
  wire nIN, n1,n2,n3,n4;
  
  nand(nIN, IN, IN);
  
  nand(n1, IN, clk);
  nand(n2, nIN, clk);
  
  nand(n3, n1, n4);
  nand(n4, n2, n3);
  
  buf(Q, n3);
  
endmodule