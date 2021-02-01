// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module encoder_8_3(A, E);
  input [7:0]A;
  output reg [2:0] E;
  
  always@(A)
    begin
      if(A[7]) E = 3'b111;
      else if(A[6]) E = 3'b110;
      else if(A[5]) E = 3'b101;
      else if(A[4]) E = 3'b100;
      else if(A[3]) E = 3'b011;
      else if(A[2]) E = 3'b010;
      else if(A[1]) E = 3'b001;
      else if(A[0]) E = 3'b000;
      else E = 3'bxxx;
    end
endmodule