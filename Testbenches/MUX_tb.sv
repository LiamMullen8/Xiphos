module MUX_tb;
  
  reg X;
  reg Y;
  reg OUT;
  reg s;
  
  initial
    begin      
      X = 0; Y = 0; s = 0;
    end

  MUX dut(.OUT(OUT), .X(X), .Y(Y), .sel(s));
  
	always
    begin      
      #5 X = 1; Y = 0; s = 0;
      #5 X = 0; Y = 1; s = 0;
      #5 X = 1; Y = 0; s = 1;
      #5 X = 0; Y = 1; s = 1;

    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %d, Y: %b, s: %b, OUT: %d",
               X, Y, s, OUT);
  	end
    
  initial #40 $finish;
           
endmodule
