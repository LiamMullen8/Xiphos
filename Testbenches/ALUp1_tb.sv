module ALUp1_tb;
  
  reg [15:0]OUT;
  reg [15:0]X;
  reg [15:0]Y;
  reg zx;			// if zx: x = 0
  reg nx;			// if nx: x = !x
  reg zy;			// if zy: y = 0
  reg ny;			// if ny: y = !y
  reg f;			// if f: x+y, else: x&y
  reg no;			// if no: out = ~out
  
  initial
    begin      
      X=0; Y=0; zx=0; nx=0; zy=0; ny=0; f=0; no=0;
    end

  ALUp1 dut(.OUT(OUT), .X(X), .Y(Y),
            .zx(zx), .nx(nx), 
            .zy(zy), .ny(ny),
            .f(f), .no(no));
  
    always
    begin      
      #5 X = 255; Y=63;
      #5 zx=1; nx=0; zy=1; ny=0; f=1; no=0; //out = 0
      #5 zx=1; nx=1; zy=1; ny=1; f=1; no=1; //out = 1
      #5 zx=1; nx=1; zy=1; ny=0; f=1; no=0; //out = -1
      #5 zx=0; nx=0; zy=1; ny=1; f=0; no=0; //out = x
      #5 zx=1; nx=1; zy=0; ny=0; f=0; no=0; //out = y
      #5 zx=0; nx=0; zy=1; ny=1; f=0; no=1; //out = !x
      #5 zx=1; nx=1; zy=0; ny=0; f=0; no=1; //out = !y
      #5 zx=0; nx=0; zy=1; ny=1; f=1; no=1; //out = -x
      #5 zx=1; nx=1; zy=0; ny=0; f=1; no=1; //out = -y
      #5 zx=0; nx=1; zy=1; ny=1; f=1; no=1; //out = x+1
      #5 zx=1; nx=1; zy=0; ny=1; f=1; no=1; //out = y+1
      #5 zx=0; nx=0; zy=1; ny=1; f=1; no=0; //out = x-1
      #5 zx=1; nx=1; zy=0; ny=0; f=1; no=0; //out = y-1
      #5 zx=0; nx=0; zy=0; ny=0; f=1; no=0; //out = x+y
      #5 zx=0; nx=1; zy=0; ny=0; f=1; no=1; //out = x-y
      #5 zx=0; nx=0; zy=0; ny=1; f=1; no=1; //out = y-x
      #5 zx=0; nx=0; zy=0; ny=0; f=0; no=0; //out = x&y
      #5 zx=0; nx=1; zy=0; ny=1; f=0; no=1; //out = x|y
    end 
  
   initial
      begin
        $dumpfile("not.vcd");
      $dumpvars;
    end
  
  initial
  	begin $display("________________________________");      
      $monitor("X: %b, Y: %b, OUT: %b",
               X, Y, OUT);
  	end
    
  initial #100 $finish;
           
endmodule
