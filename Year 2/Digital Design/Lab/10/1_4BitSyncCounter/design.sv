// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module counter_1 (input clk, rst, updown, output reg [3:0] count);
	always @ (posedge clk, posedge rst) 
      begin
		if (rst)
			count <= 4'b0000;
		else if (updown)
			count <= #1 count + 1'b1;
		else
			count <= #1 count - 1'b1;
	  end
endmodule