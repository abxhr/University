// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg A, B;
  wire C;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
    
    #000 A = 0; B = 0;    
    #050 A = 0; B = 1;
    #050 A = 1; B = 0;    
    #050 A = 1; B = 1;
    #050 $stop;
    end
  
  xor_2_1 U1 (C, A, B);
  
endmodule