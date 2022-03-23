module DFF_tb;
  
  reg in;
  reg clk;
  reg out;

  initial
    begin      
      in = 0; clk=0;
    end

  DFF dut(.Q(out), .IN(in), .clk(clk));
  
  	always
      begin
        #5 clk = ~clk;
      end
  
    always
    begin      
      #10 in = ~in;
    end 
  
   initial
      begin
        $dumpfile("dff.vcd");
      $dumpvars;
    end
  
    initial #100 $finish;

endmodule