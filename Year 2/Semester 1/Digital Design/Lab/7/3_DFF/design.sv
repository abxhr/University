// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module D_FF ( input d, set_b, rst_b, clk,output reg  q,  output q_bar);
always @(posedge clk, negedge set_b, negedge rst_b)
	begin
		if (rst_b == 0)
			begin
  				q <= 0;
			end
		else if (set_b == 0)
			begin
 				q <=1;

			end
		else
			begin
  				q <= d;

			end
		end
  
endmodule