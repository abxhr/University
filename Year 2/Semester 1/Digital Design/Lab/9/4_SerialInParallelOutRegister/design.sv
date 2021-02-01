// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module serialInParallelOut(input Sin,clk,output reg [3:0] Sout);
  always@(posedge clk)
    begin
      Sout[0] <= Sin;
      Sout[1] <= Sout[0];
      Sout[2] <= Sout[1];
      Sout[3] <= Sout[2]; 
    end
endmodule