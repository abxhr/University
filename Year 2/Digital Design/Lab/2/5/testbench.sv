// Code your testbench here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U


module testbench;
  reg [7:0]x;
  wire [7:0]y;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 x = 8'b00000000;
    #100 x = 8'b01000001;
    #100 x = 8'b00101100;
    #100 x = 8'b11000101;
    #100 x = 8'b10111011;
    #100 x = 8'b11111111;
    #100 $stop;
  end
  
  initial
    $monitor("X = %b,   1's Complement = %b", x, y);
  
    complement G1 (x,y);
endmodule