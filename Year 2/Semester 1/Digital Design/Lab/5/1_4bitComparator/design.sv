// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module comparator(L,E,G,A,B);
  input [3:0] A, B;
  output L, E, G;
  
  assign L = A<B;
  assign E = A==B;
  assign G = A>B;
endmodule