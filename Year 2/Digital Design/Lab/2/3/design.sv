// Code your design here
//Abshar Mohammed Aslam
//ID: 2019A7PS0233U


module AND_gate(p,q,r,s);			// AND GATE
  input p, q, r;
  output s;
  and (s,p,q,r);
endmodule


module OR_gate(p,q,r,s);			// OR GATE
  input p, q, r;
  output s;
  or (s,p,q,r);
endmodule


module NAND_gate(p,q,r,s);			// NAND GATE
  input p, q, r;
  output s;
  nand (s,p,q,r);
endmodule


module NOR_gate(p,q,r,s);			// NOR GATE
  input p, q, r;
  output s;
  nor (s,p,q,r);
endmodule


module EXOR_gate(p,q,r,s);			// EXOR GATE
  input p, q, r;
  output s;
  xor (s,p,q,r);
endmodule


module EXNOR_gate(p,q,r,s);			// EXNOR GATE
  input p, q, r;
  output s;
  xnor (s,p,q,r);
endmodule