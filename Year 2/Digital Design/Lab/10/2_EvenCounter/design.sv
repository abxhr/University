// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module counter_2 (input clk, rst, output reg [4:0] cnt);
	always @ (posedge clk, posedge rst) 
      begin
		if (rst)
        	cnt <= 5'b00000;
		else if (cnt == 5'd20)
			cnt <= #1 5'b00000;
		else
			cnt <= #1 cnt + 5'b00010;
	  end
endmodule
