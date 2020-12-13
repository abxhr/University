// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module testbench;
  reg [1:0] I;
  reg S;
  wire Y;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
    
    #000 S = 0; I = 2'b00;
    #050 I = 2'b01;
    #050 I = 2'b10;    
    #050 I = 2'b11;
    #050 S = 1; I = 2'b00;
    #050 I = 2'b01;
    #050 I = 2'b10;    
    #050 I = 2'b11;
    #050 $stop;
    end
  mux_2x1 U1 (Y, I, S);
  
endmodule