// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module testbench;
  reg [1:0] A;
  wire [3:0] D;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    
    #00 A = 2'b00;
    #50 A = 2'b01;
    #50 A = 2'b10;
    #50 A = 2'b11;
    #50 $stop;
    end
  
  decoder G1 (D,A);
  
  initial
    $monitor("Input = %b    Decoded Data = %b", A, D);
endmodule