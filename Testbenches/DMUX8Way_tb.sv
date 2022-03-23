module DMUX8Way_tb;
  reg X;
  reg [2:0]s;
  
  reg OUT1;
  reg OUT2;
  reg OUT3;
  reg OUT4;
  reg OUT5;
  reg OUT6;
  reg OUT7;
  reg OUT8;
  
  initial
    begin      
      X = 1; s=0;
    end

  DMUX8Way dut(.X(X), .OUT1(OUT1),.OUT2(OUT2),.OUT3(OUT3),.OUT4(OUT4),.OUT5(OUT5),.OUT6(OUT6),.OUT7(OUT7),.OUT8(OUT8), .s(s));
  
    always
    begin      
      #5 s=s+1;
    end 
  
   initial
      begin
        $dumpfile("dmux8way.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %d, out1: %d, out2: %d, out3: %d, out4: %d, out5: %d, out6: %d, out7: %d, out8: %d, s: %d",
               X, OUT1, OUT2, OUT3, OUT4, OUT5, OUT6, OUT7, OUT8, s);
  	end
    
  initial #40 $finish;
           
endmodule
