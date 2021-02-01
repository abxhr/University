// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg A, B, C;
  wire Sum, Carry;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 A = 0; B = 0; C = 0;
    #100 A = 0; B = 0; C = 1;
    #100 A = 0; B = 1; C = 0;
    #100 A = 0; B = 1; C = 1;
    #100 A = 1; B = 0; C = 0;
    #100 A = 1; B = 0; C = 1;
    #100 A = 1; B = 1; C = 0;
    #100 A = 1; B = 1; C = 1;
    #100 $stop;
  end
  
  fulladder M1(Sum, Carry, A, B, C);
endmodule
