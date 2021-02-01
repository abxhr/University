// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg [7:0]A;
  wire [7:0]gray;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1,testbench);
    
    #00 A = 8'b00000000;
    #50 A = 8'b00110001;
    #50 A = 8'b00110011;
    #50 A = 8'b01001001;
    #50 A = 8'b10101011;
    #50 A = 8'b00101100;
    #50 A = 8'b11100001;
    #50 A = 8'b11111111;
    #50 $stop;
  end
  
  initial
    $monitor("Gray Code of %b is ....   %b", A, gray);
  
  GC M1 (gray, A);
endmodule