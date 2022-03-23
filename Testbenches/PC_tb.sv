module PC_TB;
  
  reg [15:0]out;
  reg [15:0]in;
  reg ld;
  reg inc;
  reg reset;
  reg clk;

  initial
    begin      
      in = 0; inc=0; ld=0; reset=0; clk=0;
    end

  PC dut(.out(out),
         .in(in),
         .ld(ld),
         .inc(inc),
         .reset(reset),
         .clk(clk));
  
  	always
      begin
        #5 clk = ~clk;
      end

  
   initial
      begin
        $dumpfile("programcounter.vcd");
      $dumpvars;
    end
  
    initial #100 $finish;

endmodule