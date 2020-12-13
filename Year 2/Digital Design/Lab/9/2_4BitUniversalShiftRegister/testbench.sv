// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module tb;
  reg shift_L, shift_R, clk;
  reg [1:0] mode;
  reg [3:0] parallel_in;
  wire [3:0] parallel_out;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, tb);
    
    clk = 1'b0;
    repeat (300) # 5 clk = ~clk; //clock, T = 10 and 50% duty cycle.
  end
  
  always begin
    #00 mode = 2'b11; parallel_in = 4'b0000; shift_L = 1; shift_R = 1;
    #40 mode = 2'b01; parallel_in = 4'b0000; shift_L = 1; shift_R = 0;
    #40 mode = 2'b11; parallel_in = 4'b0000;
    #40 mode = 2'b10; shift_R = 1; shift_L = 0;
    #40 mode = 2'b10; shift_R = 0; shift_L = 1;
    #40 mode = 2'b11; parallel_in = 4'b1010;
    #40 mode = 2'b00; parallel_in = 4'b0000;
    #40 $stop;
  end
  
  uni_shift_reg M(shift_L, shift_R, clk, parallel_in,mode, parallel_out);
endmodule