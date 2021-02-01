// Code your testbench here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U


module testbench;
  reg [3:0]x;
  wire e,p;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 x = 4'b0000;   // 0
   	#100 x = 4'b0001;	// 1
    #100 x = 4'b0010;	// 2
    #100 x = 4'b0011;	// 3
    #100 x = 4'b0100;	// 4
    #100 x = 4'b0101;	// 5
    #100 x = 4'b1010;	// 10
    #100 x = 4'b1011;	// 11
    #100 x = 4'b1100;	// 12
    #100 x = 4'b1101;	// 13
    #100 x = 4'b1110;	// 14
    #100 x = 4'b1111;	// 15
    #100 $stop;
  end
    initial
      $monitor ("Message: %b,  Parity Bit: %b,  Error: %b", x, p, e);
  
  error C1 (x,p,e);
    
endmodule