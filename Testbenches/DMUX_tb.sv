module DMUX_tb;
  
  reg X;
  reg s;
  reg OUT1;
  reg OUT2;
  
  initial
    begin      
      X = 0; s = 0;
    end

  DMUX dut(.O1(OUT1), .O2(OUT2), .X(X), .sel(s));
  
	always
    begin      
      #5 X = 0; s = 0;
      #5 X = 0; s = 1;
      #5 X = 1; s = 0;
      #5 X = 1; s = 1;

    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("_____________________________________________________________");      
      $monitor("X: %d, s: %b, OUT1: %d, OUT2: %d",
               X, s, OUT1, OUT2);
  	end
    
  initial #20 $finish;
           
endmodule