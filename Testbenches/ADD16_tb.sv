module ADD16_tb;
  
  reg [15:0]X;
  reg [15:0]Y;
  reg [15:0]s;
  
  initial
    begin      
      X = 1; Y = 0;
    end

  ADD16 dut(.s(s), .X(X), .Y(Y));
  
    always
    begin      
      #5 X = 0; Y = 0;
      #5 X = 1; Y = 0;
      #5 X = 0; Y = 1;
      #5 X = 1; Y = 1;

    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("________________________________");      
      $monitor("X: %b, Y: %b, s: %b",
               X, Y, s);
  	end
    
  initial #40 $finish;
           
endmodule
