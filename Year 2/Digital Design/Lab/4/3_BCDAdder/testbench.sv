// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg [3:0]P; 
  reg [3:0]Q;
  wire [3:0]Sum;
  wire Carry;
  
  BCD U1 (Sum, Carry, P, Q);
  
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 P = 4'b0000 ; Q = 4'b0000;
    #100 P = 4'b0010 ; Q = 4'b0001;
    #100 P = 4'b0100 ; Q = 4'b0011;
    #100 P = 4'b0101 ; Q = 4'b0101;
    #100 P = 4'b0110 ; Q = 4'b0101;
    #100 P = 4'b1000 ; Q = 4'b0111;
    #100 P = 4'b1001 ; Q = 4'b1000;
    #100 P = 4'b1001 ; Q = 4'b1001;
    #100 $stop;
  end
  
  initial
    $monitor("P = %b,   Q = %b,   BCD SUM = %b,   END CARRY = %b", P,Q,Sum,Carry);
    
endmodule