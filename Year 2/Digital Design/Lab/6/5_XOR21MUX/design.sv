// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module xor_2_1(C, A, B);
  input A,B;
  output C;
  
  wire [3:0] I;
  assign I = 4'b0110;
  
  mu_4_1 M1 (C, I, {A, B});
endmodule


module mux_4_1 (y, i, select);
  input [3:0]i;
  input [1:0]select;
  output y;
  wire p, q, r, s;
  
  assign p = i[0] & ~select[0] & ~select[1];
  assign q = i[1] & select[0] & ~select[1];
  assign r = i[2] & ~select[0] & select[1];
  assign s = i[3] & select[0] & select[1];
  assign y = p|q|r|s; 
endmodule