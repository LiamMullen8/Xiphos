module MUX4Way16_tb;
  
  reg [15:0]W;
  reg [15:0]X;
  reg [15:0]Y;
  reg [15:0]Z;
  reg [15:0]OUT;
  reg [1:0]s;
  
  initial
    begin      
      W = 0; X = 0; Y = 0; Z = 0; s = 0;
    end

  MUX4Way16 dut(.OUT(OUT), .W(W), .X(X), .Y(Y), .Z(Z), .s(s));
  
	always
    begin      
      #5 W = W+11; X = X+2; Y = Y+24; Z = Z+8; s = (s+1)%4;
    end 
  
   initial
      begin
        $dumpfile("mux4way16.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("w: %d, X: %d, Y: %d, z: %d, s: %b, OUT: %d",
               W, X, Y, Z, s, OUT);
  	end
    
  initial #50 $finish;
           
endmodule
