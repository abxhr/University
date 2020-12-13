// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg I;
  reg [1:0]S;
  wire [3:0]Y;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
    
    #000 I = 0;
    #050 S = 2'b00; I = 1; 
    #050 S = 2'b01;    
    #050 S = 2'b10;    
    #050 S = 2'b11;    
    #050 $stop;
  	end
  
  dmux_1_4 U1 (Y, I, S);
  
endmodule