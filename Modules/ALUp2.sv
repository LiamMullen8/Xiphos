`include "ADD16.sv"
`include "AND16.sv"
`include "NOT16.sv"
`include "MUX16.sv"
`include "OR16.sv"
`include "OR8Way.sv"

module ALUp2(
  output [15:0]OUT,
  output zr,		// if out == 0: zr = 1
  output ng,		// if out < 0:  ng = 1
  input [15:0]X,
  input [15:0]Y,
  input zx,			// if zx: x = 0
  input nx,			// if nx: x = !x
  input zy,			// if zy: y = 0
  input ny,			// if ny: y = !y
  input f,			// if f: x+y, else: x&y
  input no			// if no: out = ~
);
  
  ////////////////PRESETTING X, Y//////////////////
  wire [15:0]x;
  // if zx: x = 0
  MUX16 mx0(x, X, 16'b0, zx);
  
  wire [15:0]nx1;
  wire [15:0]x1;
  // if nx: x = !x
  NOT16 notx(nx1, x);
  MUX16 mnx(x1, x, nx1, nx);
  
  ////////////////
  wire [15:0]y;
  // if zy: y = 0
  MUX16 my0(y, Y, 16'b0, zy);
  
  wire [15:0]ny1;
  wire [15:0]y1;
  // if nx: x = !x
  NOT16 noty(ny1, y);
  MUX16 mny(y1, y, ny1, ny);
  
  //////////////////////////////////////////////////
  
  wire [15:0]ad;
  wire [15:0]an;
  
  // if f: x+y, else: x&y
  ADD16 adxy(ad, x1, y1);
  AND16 anxy(an, x1, y1);
  
  wire [15:0]out1;
  MUX16 mf(out1, an, ad, f);
	
  ////////////////
  wire [15:0]nout1;
  // if no: out = ~out
  NOT16 nout(nout1,out1);
  MUX16 mno(OUT, out1, nout1, no);
  
  buf(ng, OUT[15]); // 2s compliment, if highest set, then negative
  
  wire or1, nor1;
  wire or2, nor2;
  // zr = NOR(out), if any bits set, zr=0
  
  OR8Way o8w(or1, OUT[15:8]);
  NOT n23(nor1, or1);
  
  OR8Way o8w1(or2, OUT[7:0]);
  NOT n53(nor2, or2);
  
  AND gu(zr, nor1, nor2);

endmodule