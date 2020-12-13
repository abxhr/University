// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module t_exp9a;
  wire z;
  reg x,clk, rst;
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars (1, t_exp9a);
    #200 $finish;
  end
  
  initial begin clk = 0; forever #5 clk = ~clk; end
  
  initial begin
    x = 0; rst = 1;
    #10 x=1;
    #10 x= 0; rst =0;
    #10 x= 1;
    #10 x= 1;
    #10 x= 0;
    #10 x= 1;
    #10 x= 0;
    #10 x= 1;
    #10 x= 0;
    #10 x= 1;
    #10 x= 1;
    #10 x= 0;
    #10 x= 0;
    #10 x= 0;
    #10 x= 1;
    #10 x= 0;
    #10 x= 1;
  end
  
  detector_110 M(x,clk,rst,z);
endmodule