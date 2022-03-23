module OR16(
  output [15:0]OUT,
  input [15:0]X,
  input [15:0]Y
);
  
	OR o15(OUT[15], X[15], Y[15]);
	OR o14(OUT[14], X[14], Y[14]);
	OR o13(OUT[13], X[13], Y[13]);
	OR o12(OUT[12], X[12], Y[12]);
	OR o11(OUT[11], X[11], Y[11]);
	OR o10(OUT[10], X[10], Y[10]);
	OR o9(OUT[9],   X[9],  Y[9]);
	OR o8(OUT[8],   X[8],  Y[8]);
	OR o7(OUT[7],   X[7],  Y[7]);
	OR o6(OUT[6],   X[6],  Y[6]);
	OR o5(OUT[5],   X[5],  Y[5]);
	OR o4(OUT[4],   X[4],  Y[4]);
	OR o3(OUT[3],   X[3],  Y[3]);
	OR o2(OUT[2],   X[2],  Y[2]);
	OR o1(OUT[1],   X[1],  Y[1]);
	OR o0(OUT[0],   X[0],  Y[0]);
    
	
endmodule