// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module dmux_1_8(Y, I, S);
  input I;
  input [2:0]S;
  output [7:0]Y;
  
  assign Y = I<<S;
endmodule