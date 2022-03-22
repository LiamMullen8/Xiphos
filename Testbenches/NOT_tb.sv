module NOT_tb;
  
  reg X;  
  reg OUT;
  
  initial
    begin      
      X = 0;
    end

  NOT dut(.OUT(OUT),.X(X));
  
	always
    begin      
      #5 X = OUT;
    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %d, OUT: %d",
               X, OUT);
  	end
    
  initial #40 $finish;
           
endmodule
