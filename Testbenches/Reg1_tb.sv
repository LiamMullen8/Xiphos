module Reg1_tb;
  
  reg in;
  reg clk;
  reg out;
  reg ld;

  initial
    begin      
      in=0; clk=0; ld=0;
    end

  Reg1 dut(.out(out), .in(in), .ld(ld), .clk(clk));
  
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
        $dumpfile("reg1.vcd");
      $dumpvars;
    end
  
    initial #100 $finish;

endmodule