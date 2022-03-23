module DMUX4Way_tb;
  
  reg X;
  reg OUT1;
  reg OUT2;
  reg OUT3;
  reg OUT4;
  reg [1:0]s;
  
  initial
    begin      
      X = 1; s = 0;
    end

  DMUX4Way dut(.OUT1(OUT1),.OUT2(OUT2),.OUT3(OUT3),.OUT4(OUT4), .X(X), .s(s));
  
	always
    begin      
      #5 s = (s+1)%4;
    end 
  
   initial
      begin
        $dumpfile("dmux4way.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %d, s: %b, OUT1: %d, OUT2: %d, OUT3: %d ,OUT4: %d",
               X, s, OUT1 ,OUT2, OUT3, OUT4);
  	end
    
  initial #50 $finish;
           
endmodule
