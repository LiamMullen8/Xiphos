module NOT16_tb;
  
  reg [15:0]X;  
  reg [15:0]OUT;
  
  initial
    begin      
      X = 0;
    end

  NOT16 dut(.OUT(OUT),.X(X));
  
	always
    begin      
      #5 X = X+1;
    end 
  
   initial
      begin
        $dumpfile("not16.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %b, OUT: %b",
               X, OUT);
  	end
    
  initial #500 $finish;
           
endmodule
