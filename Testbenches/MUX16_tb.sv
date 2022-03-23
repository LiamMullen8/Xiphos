module MUX16_tb;
  
  reg [15:0]X;
  reg [15:0]Y;
  reg [15:0]OUT;
  reg s;
  
  initial
    begin      
      X = 0; Y = 0; s = 0;
    end

  MUX16 dut(.OUT(OUT), .X(X), .Y(Y), .s(s));
  
	always
    begin      
      #5 X = 255; Y = 0; s = 0;
      #5 X = 255; Y = 0; s = 1;
      #5 X = 511; Y = 63; s = 0;
      #5 X = 511; Y = 63; s = 1;

    end 
  
   initial
      begin
        $dumpfile("mux16.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %d, Y: %d, s: %b, OUT: %d",
               X, Y, s, OUT);
  	end
    
  initial #20 $finish;
           
endmodule
