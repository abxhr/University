// Code your testbench here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U

module testbench;
  reg a;
  wire b;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 a = 0;
    #030 a = 1;
    #030 $stop;
    
  end
  NANDgate G1 (a,b);
endmodule