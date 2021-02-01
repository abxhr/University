// Code your testbench here
//Abshar Mohammed Aslam
//ID: 2019A7PS0233U


module testbench;
  reg a, b, c;
  wire d;
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (1, testbench);
    
    #000 a = 0; b = 0; c = 0;
    #100 a = 0; b = 0; c = 1;
    #100 a = 0; b = 1; c = 0;
    #100 a = 0; b = 1; c = 1;
    #100 a = 1; b = 0; c = 0;
    #100 a = 1; b = 0; c = 1;
    #100 a = 1; b = 1; c = 0;
    #100 a = 1; b = 1; c = 1;
    #100 $stop;
  end
  AND_gate G1 (a, b, c, d);
  //OR_gate G2 (a,b,c,d);
  //NAND_gate G3 (a,b,c,d);
  //NOR_gate G4 (a,b,c,d);
  //EXOR_gate G5 (a,b,c,d);
  //EXNOR_gate G6 (a,b,c,d);
endmodule