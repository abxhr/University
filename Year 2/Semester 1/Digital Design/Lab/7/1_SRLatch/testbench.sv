// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
reg S,R,C;
wire Qb,Q;
initial 
  begin 
  	$dumpfile ("dump.vcd");
  	$dumpvars(1, testbench);
	C= 1'b1;
	repeat(3)
      #100 C=~C;
	end
	initial 
      begin 
		S=1'b1;
		repeat(10) 
          #25 S=~S;
		end
	initial 
      begin 
		R=1'b0;
		repeat (20) 
          #15 R=~R;
		end

  SR_Latch N1(S,R,C,Qb,Q);
endmodule
