// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module tb_ring;
    reg clock;
    reg reset;
  	wire [3:0] count_out;
   
  	initial
      begin
		$dumpfile("dump.vcd");
      	$dumpvars(1,tb_ring);
      	clock = 1'b1;
      	repeat (80) # 10 clock = ~clock;
      	$stop;
      end
      
  	initial 
      begin
        reset = 1; 
        #50;       
        reset = 0;
      end
 
  ring_counter R(clock,reset,count_out);
  
endmodule