module Reg16_tb;
  
  reg [15:0]in;
  reg clk;
  reg [15:0]out;
  reg ld;

  initial
    begin      
      in=0; clk=0; ld=0;
    end

  Reg16 dut(.out(out), .in(in), .ld(ld), .clk(clk));
  
  	always
      begin
        #5 clk = ~clk;
      end
  
    always
    begin      
      #10 in = ~in;
      #5 ld = ~ld;
    end 
  
   initial
      begin
        $dumpfile("reg16.vcd");
      $dumpvars;
    end
  
    initial #100 $finish;

endmodule