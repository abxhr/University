// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module testbench;
  reg [3:0] A, B;
  wire L, E, G;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    
    #000 A = 4'b0000 ; B = 4'b1111;
    #50 A = 4'b1111 ; B = 4'b0000;
    #50 A = 4'b1111 ; B = 4'b1111;
    #50 A = 4'b0101 ; B = 4'b1000;
    #50 A = 4'b1010 ; B = 4'b0011;
    #50 A = 4'b1001 ; B = 4'b1010;
    #50 $stop;
    end
  
  comparator G1 (L,E,G,A,B);
  
endmodule