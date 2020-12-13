// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module mux_4_1(Y, I, S);
  input [3:0]I;
  input [1:0]S;
  output Y;
  wire p, q;
  
  mux_2_1 M1 (p, I[1:0], S[0]);
  mux_2_1 M2 (q, I[3:2], S[0]);
  mux_2_1 M3 (Y, {q,p}, S[1]);
endmodule
  
  
module mux_2_1(Y, I, S);
  input [1:0]I;
  input S;
  output reg Y;
  
  always@(*) 
    begin
      case(S)
        0: Y = I[0];
        1: Y = I[1];
      endcase
  	end
endmodule