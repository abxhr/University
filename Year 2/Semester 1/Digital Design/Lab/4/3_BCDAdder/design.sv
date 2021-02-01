// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module BCD(Sum,Carry,P,Q);
  input [3:0] P, Q;
  output [3:0]Sum;
  output Carry;
  wire K, z1, z2, temp;
  wire [3:0] C, s;
  
  parallelbit M1 (s, K, P, Q);
  
  and (z1, s[3], s[2]);
  and (z2, s[3], s[1]);
  or (C[1], z1, z2, K);
  assign C[2] = C[1];
  assign C[0] = 0;
  assign C[3] = 0;
  
  parallelbit M2 (Sum, temp, s, C);
  assign Carry = C[1];
endmodule


module parallelbit(S, C, A, B);
  input [3:0] A, B;
  output [3:0]S;
  output C;
  wire c1,c2,c3;
  
  fulladder G1(S[0],c1,A[0],B[0],0);
  fulladder G2(S[1],c2,A[1],B[1],c1);
  fulladder G3(S[2],c3,A[2],B[2],c2);
  fulladder G4(S[3],C,A[3],B[3],c3);
endmodule


module fulladder(sum, out ,a ,b ,in);
  input a,b,in;
  output sum, out;
  assign sum = a^b^in;
  assign out = a&b | in&(a^b);
endmodule