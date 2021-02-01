// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U


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