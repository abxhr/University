// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U 

module T_FF (T,C,Q,Qb);
input T,C;
output reg Q,Qb;
always@(posedge C) 
  begin
	case({T})
		2'b0 : Q<=Q;
		2'b1 : Q<=~Q;
	endcase
  end
endmodule
