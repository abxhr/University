// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
	reg clk,rst;
	wire [4:0]count;
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
		#395 rst = 1'b1;
		#20 rst = 1'b0;
	  end

  counter_2 even (clk,rst,count);
endmodule