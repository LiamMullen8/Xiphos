module MUX8Way16_tb;
  reg [15:0]A;
  reg [15:0]B;
  reg [15:0]C;
  reg [15:0]D;
  reg [15:0]W;
  reg [15:0]X;
  reg [15:0]Y;
  reg [15:0]Z;
  reg [15:0]OUT;
  reg [2:0]s;
  
  initial
    begin      
      A = 0; B = 0; C = 0; D = 0; W = 0; X = 0; Y = 0; Z = 0; s = 0;
    end

  MUX8Way16 dut(.OUT(OUT), .A(A),.B(B),.C(C),.D(D), .W(W), .X(X), .Y(Y), .Z(Z), .s(s));
  
	always
    begin      
      #5 A = A+3; B = B+9; C = C+17; D = D+5; W = W+11; X = X+2; Y = Y+24; Z = Z+8; s = (s+1);
    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("A: %d, B: %d, C: %d, D: %d, W: %d, X: %d, Y: %d, z: %d, s: %d, OUT: %d",
               A,B,C,D,W, X, Y, Z, s, OUT);
  	end
    
  initial #50 $finish;
           
endmodule
