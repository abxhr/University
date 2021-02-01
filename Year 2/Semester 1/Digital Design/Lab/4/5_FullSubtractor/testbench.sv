// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg p, q, r;
  wire diff, borrow;
  
  fullsub M1 (diff, borrow, p, q, r);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
        
    #00 p = 0; q = 0; r = 0;
    #50 p = 0; q = 0; r = 1;
    #50 p = 0; q = 1; r = 0;
    #50 p = 0; q = 1; r = 1;
    #50 p = 1; q = 0; r = 0;
    #50 p = 1; q = 0; r = 1;
    #50 p = 1; q = 1; r = 0;
    #50 p = 1; q = 1; r = 1;
    #50 $stop;
  end
  
endmodule
    
    