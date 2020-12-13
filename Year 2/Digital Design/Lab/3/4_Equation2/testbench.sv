// Code your testbench here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U


module testbench;
  reg a, b, c;
  wire y;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 a = 0; b = 0; c = 0;
    #100 a = 0; b = 0; c = 1;
    #100 a = 0; b = 1; c = 0;
    #100 a = 0; b = 1; c = 1;
    #100 a = 1; b = 0; c = 0;
    #100 a = 1; b = 0; c = 1;
    #100 a = 1; b = 1; c = 0;
    #100 a = 1; b = 1; c = 1;
    #100 $stop;
  end
  struc_model S1 (a,b,c,y);
endmodule
