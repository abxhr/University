// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg [7:0] A;
  wire [2:0] E;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    
    #00 A = 8'b00000000;
    #50 A = 8'b00000001;
    #50 A = 8'b00000010;
    #50 A = 8'b00000100;
    #50 A = 8'b00001000;
    #50 A = 8'b00010000;
    #50 A = 8'b00100000;
    #50 A = 8'b01000000;
    #50 A = 8'b10000000;
    #50 $stop;
    end
  
  encoder_8_3 U1 (A, E);
  
  initial
    $monitor("Input = %b    Encoded Data = %b", A, E);
endmodule