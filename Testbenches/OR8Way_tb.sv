module OR8Way_tb;
  
  reg [7:0]X;  
  reg OUT;
  
  initial
    begin      
      X = 0;
    end

  OR8Way dut(.OUT(OUT),.X(X));
  
	always
    begin      
      #5 X = X+1;
    end 
  
   initial
      begin
        $dumpfile("or8way.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %b, OUT: %b",
               X, OUT);
  	end
    
  initial #100 $finish;
           
endmodule
