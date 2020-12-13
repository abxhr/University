// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
reg T,C;
wire Q,Qb;
initial 
  begin 
  	$dumpfile("dump.vcd");
  	$dumpvars(1,testbench);
	C= 1'b1;
	repeat(40) 
      #13 C=~C;
	end
	initial 
      begin 
		T= 1'b1;
		repeat(5) 
          #110 T=~T;
		end
		
	T_FF U1(T,C,Q,Qb);
  
endmodule
