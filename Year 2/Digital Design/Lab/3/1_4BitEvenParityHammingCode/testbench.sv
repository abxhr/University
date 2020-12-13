// Code your testbench here
// Abshar Mohammed Aslam
// ID:2019A7PS0233U


module testbench;
  reg d1,d2,d3,d4;
  wire p1,p2,p3;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
    
    #000 d1 = 0; d2 = 0; d3 = 0; d4 = 0;
    #100 d1 = 0; d2 = 0; d3 = 0; d4 = 1;
    #100 d1 = 0; d2 = 1; d3 = 1; d4 = 0;
    #100 d1 = 0; d2 = 0; d3 = 1; d4 = 1;
    #100 d1 = 0; d2 = 1; d3 = 0; d4 = 0;
    #100 d1 = 0; d2 = 1; d3 = 0; d4 = 1;
    #100 d1 = 1; d2 = 0; d3 = 1; d4 = 0;
    #100 d1 = 1; d2 = 0; d3 = 1; d4 = 1;
    #100 d1 = 1; d2 = 1; d3 = 0; d4 = 0;
    #100 d1 = 1; d2 = 1; d3 = 0; d4 = 1;
    #100 d1 = 1; d2 = 1; d3 = 1; d4 = 0;
    #100 d1 = 1; d2 = 1; d3 = 1; d4 = 1;
    #100 $stop;
  end
  initial
    $monitor ("DATA: %b%b%b%b,   Hamming Code: %b%b%b%b%b%b%b", d1,d2,d3,d4,p1,p2,d1,p3,d2,d3,d4);
  
  hamming G1 (p1,p2,d1,p3,d2,d3,d4);
  
endmodule