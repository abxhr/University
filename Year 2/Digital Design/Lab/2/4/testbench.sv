// Code your testbench here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U


module testbench;
  reg p,q,r;
  wire x,y;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 p = 0; q = 0; r = 0;
    #100 p = 0; q = 0; r = 1;
    #100 p = 0; q = 1; r = 0;
    #100 p = 0; q = 1; r = 1;
    #100 p = 1; q = 0; r = 0;
    #100 p = 1; q = 0; r = 1;
    #100 p = 1; q = 1; r = 0;
    #100 p = 1; q = 1; r = 1;
    #100 $stop;
  end
  assignment2_b U1 (p,q,r,x,y);
endmodule