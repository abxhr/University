// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
	reg clk,rst,updown;
	wire [3:0]count;
	initial 
      begin
		$dumpfile("dump.vcd"); 
		$dumpvars(1,testbench);
		clk = 1'b1;
		repeat (80) # 10 clk = ~clk;
		$stop;
	  end
	initial 
      begin
		rst=1'b1;
		repeat (1) # 50 rst = ~rst;
	  end
	initial 
      begin
		#00 updown =1'b1;
		#400 updown =1'b0;
	  end

  counter_1 ud (clk,rst,updown,count);
endmodule