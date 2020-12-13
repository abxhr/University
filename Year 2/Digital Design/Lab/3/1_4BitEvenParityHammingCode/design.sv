// Code your design here
// Abshar Mohammed Aslam
// ID:2019A7PS0233U


module hamming(P1,P2,D1,P3,D2,D3,D4);
  input D1,D2,D3,D4;
  output P1,P2,P3;
  
  assign P1 = D1^D2^D4;
  assign P2 = D1^D3^D4;
  assign P3 = D2^D3^D4;
endmodule