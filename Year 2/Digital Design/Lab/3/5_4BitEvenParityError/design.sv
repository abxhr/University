// Code your design here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U


module error (X,P,E);				// P is the parity bit
  input [3:0]X;
  input P;
  output E;
  
  assign P = X[3];
  xor (E, X[0], X[1], X[2], X[3]); 		// E = 1 (Error),   E = 0 (No Error)
  
endmodule