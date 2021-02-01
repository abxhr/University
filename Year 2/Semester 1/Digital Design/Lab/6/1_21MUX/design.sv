// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module mux_2x1(Y, I, S);
  input [1:0]I;
  input S;
  output Y;
  
  assign Y = (~S & I[0] | S & I[1]);
endmodule