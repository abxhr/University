// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module GC(gray, A);
  input [7:0]A;
  output reg [7:0]gray;
  integer i;
  
  always @(*) begin
    gray[7] = A[7];
    for(i = 6; i>=0; i = i-1)
        gray[i] = A[i]^A[i+1];
  end
endmodule