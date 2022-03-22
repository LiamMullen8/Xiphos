module FullAdder_tb;
  
  reg X;
  reg Y;
  reg Cout;
  reg Cin;
  reg s;
  
  initial
    begin      
      X = 0; Y = 0; Cin = 0;
    end

  FullAdder dut(.Sum(s), .Cout(Cout), .Cin(Cin), .X(X), .Y(Y));
  
    always
    begin      
      #5 X = 0; Y = 0; Cin = 0;
      #5 X = 0; Y = 0; Cin = 1;
      #5 X = 0; Y = 1; Cin = 0;
      #5 X = 0; Y = 1; Cin = 1;
      #5 X = 1; Y = 0; Cin = 0;
      #5 X = 1; Y = 0; Cin = 1;
      #5 X = 1; Y = 1; Cin = 0;
      #5 X = 1; Y = 1; Cin = 1;
    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("________________________________");      
      $monitor("X: %b, Y: %b, c: %b, s: %b",
               X, Y, Cin, Cout, s);
  	end
    
  initial #40 $finish;
           
endmodule
