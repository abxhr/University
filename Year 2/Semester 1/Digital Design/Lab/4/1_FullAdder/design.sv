// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module fulladder(Sum, Carry, A, B, C);
  input A, B, C;
  output Sum, Carry;
  
  assign Sum = A^B^C;
  assign Carry = A&B | C&(A^B);
endmodule
