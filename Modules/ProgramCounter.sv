module ProgramCounter(
  output [15:0]out,
  input [15:0]in,
  input ld,
  input inc,
  input reset,
  input clk
);
  
  // if inc, PC += 1
  INC16 i(Istate, mux1);

  MUX16 m1(mux1, in, Istate , inc);
   
  // if reset, PC = 0;
  MUX16 m2(mux2, mux1, 16'b0, reset);
  
  Reg16 r1(out, mux2, ld, clk);
    
endmodule