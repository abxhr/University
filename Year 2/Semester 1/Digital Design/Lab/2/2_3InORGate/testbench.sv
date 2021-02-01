// Code your testbench here
//Abshar Mohammed Aslam
//ID: 2019A7PS0233U

module testbench_OR3;
reg in1,in2,in3;
wire o1;
initial begin
$dumpfile ("dump.vcd");
$dumpvars (1, testbench_OR3);
#000 in3 = 0; in2 = 0; in1 = 0;
#100 in3 = 0; in2 = 0; in1 = 1;
#100 in3 = 0; in2 = 1; in1 = 0;
#100 in3 = 0; in2 = 1; in1 = 1;
#100 in3 = 1; in2 = 0; in1 = 0;
#100 in3 = 1; in2 = 0; in1 = 1;
#100 in3 = 1; in2 = 1; in1 = 0;
#100 in3 = 1; in2 = 1; in1 = 1;
#100 $stop;
end
OR_3_structural U1(o1,in1,in2,in3);
endmodule