module OR_tb;
  
  reg X;
  reg Y;
  reg OUT;
  
  initial
    begin      
      X = 0; Y = 0;
    end

  OR dut(.OUT(OUT),.X(X), .Y(Y));
  
	always
    begin      
      #5 X = 0; Y = 0;
      #5 X = 0; Y = 1;
      #5 X = 1; Y = 0;
      #5 X = 1; Y = 1;
    end 
  
   initial
      begin
        $dumpfile("or.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %d, Y: %b, OUT: %d",
               X, Y, OUT);
  	end
    
  initial #40 $finish;
           
endmodule
