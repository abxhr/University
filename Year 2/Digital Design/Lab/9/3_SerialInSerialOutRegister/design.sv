// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233

module d_ff (Q, D, Clk);
output Q;
input D, Clk;
reg Q;
always @ (posedge Clk)
Q <= D;
endmodule

module serialInSerialOut(input Sin,clk,output reg Sout);
  reg a,b,c,d;
  always@(posedge clk)
    begin
      a <= Sin;
      b <= a;
      c <= b;
      d <= c; 
      Sout <= d;
    end
endmodule
  