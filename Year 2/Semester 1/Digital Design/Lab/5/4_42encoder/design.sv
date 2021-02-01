// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module encoder (A, E);
  input [3:0] A;
  output reg [1:0] E;
  
  always @(A)
    begin
      case(A)
        4'b0001: E = 2'b00;
        4'b0010: E = 2'b01;
        4'b0100: E = 2'b10;
        4'b1000: E = 2'b11;
      endcase
    end
endmodule