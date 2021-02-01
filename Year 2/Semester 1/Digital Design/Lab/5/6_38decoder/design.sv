// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module decoder_3_8 (D,A);
  input [2:0] A;
  output [7:0] D;
  wire w;
  
  not (w,A[2]);
  decoder_2_4 M1 (A[1:0], D[3:0], w);
  decoder_2_4 M2 (A[1:0], D[7:4], A[2]);  
endmodule


module decoder_2_4 (P,Q,E);
  input [1:0] P;
  input E;
  output [3:0] Q;
  
  assign Q[0] = (~P[1] & ~P[0] & E);
  assign Q[1] = (~P[1] & P[0] & E);
  assign Q[2] = (P[1] & ~P[0] & E);
  assign Q[3] = (P[1] & P[0] & E);
endmodule