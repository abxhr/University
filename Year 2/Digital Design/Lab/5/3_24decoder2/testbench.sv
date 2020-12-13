// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module testbench;
  reg [1:0] A;
  reg E;
  wire [3:0] D;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    
    #00 A = 2'b00; E = 0;
    #50 A = 2'b01; E = 0;
    #50 A = 2'b10; E = 0;
    #50 A = 2'b11; E = 0;
    #50 A = 2'b00; E = 1;
    #50 A = 2'b01; E = 1;
    #50 A = 2'b10; E = 1;
    #50 A = 2'b11; E = 1;
    #50 $stop;
    end
  
  decoder_enable U1 (D,A,E);
  
  initial
    $monitor("Input = %b  Enable Line = %b  Decoded Data = %b", A, E, D);
endmodule