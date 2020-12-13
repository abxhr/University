// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module testbench;
  reg [3:0] A;
  reg [3:0]B;
  wire [3:0]S;
  wire C;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 A = 4'b0000 ; B = 4'b0000;
    #100 A = 4'b0010 ; B = 4'b0001;
    #100 A = 4'b0100 ; B = 4'b0011;
    #100 A = 4'b0110 ; B = 4'b0101;
    #100 A = 4'b1000 ; B = 4'b0111;
    #100 A = 4'b1010 ; B = 4'b1001;
    #100 A = 4'b1100 ; B = 4'b1011;
    #100 A = 4'b1110 ; B = 4'b1101;
    #100 A = 4'b1111 ; B = 4'b1111;
    #100 $stop;
  end
  initial
    $monitor("A = %b , B = %b , Sum = %b , Carry = %b", A,B,S,C);
  
  
  parallelbit M1 (S,C,A,B);
endmodule