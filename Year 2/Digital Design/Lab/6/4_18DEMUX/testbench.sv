// Code your testbench here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module testbench;
  reg I;
  reg [2:0]S;
  wire [7:0]Y;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
    
    #000 S = 3'b000; I = 1;
    #050 S = 3'b001;
    #050 S = 3'b010;
    #050 S = 3'b011;
    #050 S = 3'b100;
    #050 S = 3'b101;
    #050 S = 3'b110;
    #050 S = 3'b111;
    #050 $stop;
    end
  
  dmux_1_8 U1 (Y, I, S);

endmodule