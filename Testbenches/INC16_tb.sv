module INC16_tb;
  
  reg [15:0]X;
  reg [15:0]s;
  
  initial
    begin      
      X = 0;
    end

  INC16 dut(.s(s), .X(X));
  
    always
    begin      
      #5 X = 0;
      #5 X = 1945;
      #5 X = 255;
      #5 X = 65535;

    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("________________________________");      
      $monitor("X: %b, s: %b",
               X, s);
  	end
    
  initial #40 $finish;
           
endmodule
