// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg [3:0] I;
  reg [1:0]S;
  wire Y;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
    #00 S = 2'b00; I = 4'b0000;
    #50 I = 4'b0001;
    #50 I = 4'b0010;
    #50 I = 4'b0011;
    #50 S = 2'b01; I = 4'b0100;
    #50 I = 4'b0101;
    #50 I = 4'b0110;
    #50 I = 4'b0111;
    #50 S = 2'b10; I = 4'b1000;
    #50 I = 4'b1001;
    #50 I = 4'b1010;
    #50 I = 4'b1011;
    #50 S = 2'b11; I = 4'b1100;
    #50 I = 4'b1101;
    #50 I = 4'b1110;
    #50 I = 4'b1111;
    #50 $stop;
    end
  mux_4_1 U1 (Y, I, S);
  
endmodule