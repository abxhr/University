// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U 

module testbench;
reg d,set_b,rst_b,clk;
wire q,q_bar;
initial 
  begin
  	$dumpfile ("dump.vcd");
  	$dumpvars(1, testbench);
	d= 1'b1;
	repeat(40)  
      #13 d=~d;
	end
	initial 
      begin
		set_b= 1'b1;
		repeat (5) 
          #110 set_b=~set_b;
		end
	initial 
      begin
		rst_b=1'b0;
		repeat (8) 
          #70 rst_b=~rst_b ;
		end
	initial 
      begin
		clk= 1'b0;
		repeat (3) 
          #150 clk=~clk;
		end

  D_FF N1(d,set_b,rst_b,clk,q,q_bar);
  
endmodule
