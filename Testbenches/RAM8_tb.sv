module RAM8_tb;
  
  reg [15:0]in;
  reg [15:0]out;
  reg [2:0]addr;
  reg ld;
  reg clk;


  initial
    begin      
      in = 0; clk=0;
    end

  RAM8 dut(.out(out), .in(in),
           .addr(addr), .ld(ld), .clk(clk));
  
  	always
      begin
        #5 clk = ~clk;
      end
  

   initial
      begin
        $dumpfile("ram8.vcd");
      $dumpvars;
    end
  
    initial #100 $finish;

endmodule