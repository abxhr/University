// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module flip_flop (J,K,C,Q,Qb);
input J,K,C;
output reg Qb,Q;
always @(posedge C) 
  begin
    case ({J,K})
      2'b00   :Q<=Q;
      2'b01   :Q<=0;
      2'b10   :Q<=1;
      2'b11   :Q<=~Q;
    endcase
end 
endmodule