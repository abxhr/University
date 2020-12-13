// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
reg J,K,C;
wire Q,Qb;
initial 
  begin
  	$dumpfile ("dump.vcd");
  	$dumpvars(1, testbench);
  	C= 1'b1;
	repeat(40)  
      #13 C=~C;
	end
	initial 
      begin 
		J= 1'b1;
		repeat (5) 
          #110 J=~J;
		end 
	initial 
      begin 
		K=1'b0;
		repeat (8) 
          #70 K=~K ;
		end 

  flip_flop  N1(J,K,C,Q,Qb);
  
endmodule