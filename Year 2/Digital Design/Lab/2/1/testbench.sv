// Code your testbench here
//Abshar Mohammed Aslam 
//ID: 2019A7PS0233U

module testbench_ORgate;
reg p,q;
wire r;
initial
begin
$dumpfile ("dump.vcd");
$dumpvars (1, testbench_ORgate);
#000 p = 0; q = 0;
#100 p = 0; q = 1;
#100 p = 1; q = 0;
#100 p = 1; q = 1;
#100 $stop;
end
OR_2_gate_level U1(r,p,q);
//OR_2_data_flow U2(r,p,q);
//OR_2_behavioral U3(r,p,q);
endmodule