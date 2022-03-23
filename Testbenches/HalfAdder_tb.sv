module HalfAdder_tb;
  
  reg X;
  reg Y;
  reg c;
  reg s;
  
  initial
    begin      
      X = 0; Y = 0;
    end

  HalfAdder dut(.s(s), .c(c), .X(X), .Y(Y));
  
    always
    begin      
      #5 X = 0; Y = 0;
      #5 X = 0; Y = 1;
      #5 X = 1; Y = 0;
      #5 X = 1; Y = 1;
    end 
  
   initial
      begin
        $dumpfile("halfadder.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %b, Y: %b, c: %b, s: %b",
               X, Y, c, s);
  	end
    
  initial #20 $finish;
           
endmodule
