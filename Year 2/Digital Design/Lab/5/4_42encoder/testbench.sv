// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module testbench;
  reg [3:0] A;
  wire [1:0] E;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    
    #00 A = 4'b0001;
    #50 A = 4'b0010;
    #50 A = 4'b0100;
    #50 A = 4'b1000;
    #50 $stop;
    end
  
  encoder U1 (A, E);
  
  initial
    $monitor("Input = %b    Encoded Data = %b", A, E);
endmodule