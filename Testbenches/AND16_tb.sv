module AND16_tb;
  
  reg [15:0]X; 
  reg [15:0]Y; 
  reg [15:0]OUT;
  
  initial
    begin      
      X = 0; Y = 0;
    end

  AND16 dut(.OUT(OUT),.X(X), .Y(Y));
  
	always
    begin      
      #5 X = X+1;
      #5 Y = Y+5;
    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %b, Y: %b, OUT: %b",
               X, Y, OUT);
  	end
    
  initial #500 $finish;
           
endmodule
