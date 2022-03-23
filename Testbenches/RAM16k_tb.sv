module RAM16k_tb;
  
  reg [15:0]in;
  reg [15:0]out;
  reg [14:0]addr;
  reg ld;
  reg clk;

  initial
    begin      
      in = 0; clk=0;
    end

  RAM16k dut(.out(out), .in(in),
           .addr(addr), .ld(ld), .clk(clk));
  
  	always
      begin
        #5 clk = ~clk;
      end
  

   initial
      begin
        $dumpfile("ram16k.vcd");
      $dumpvars;
    end
  
    initial #100 $finish;

endmodule