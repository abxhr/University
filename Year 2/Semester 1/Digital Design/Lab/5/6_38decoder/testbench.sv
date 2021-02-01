// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module testbench;
  reg [2:0] A;
  wire [7:0] D;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    
    #00 A = 3'b000;
    #50 A = 3'b001;
    #50 A = 3'b010;
    #50 A = 3'b011;
    #50 A = 3'b100;
    #50 A = 3'b101;
    #50 A = 3'b110;
    #50 A = 3'b111;
    #50 $stop;
    end
  
  decoder_3_8 U1 (D,A);
  
  initial
    $monitor("Input = %b  Decoded Data = %b", A, D);
endmodule