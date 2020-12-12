// Code your design here
//Abshar Mohammed Aslam
//ID: 2019A7PS0233U

module OR_3_structural (output Z, input A,B,C);
wire p;
OR_2_gate G1(p,A,B);
OR_2_gate G2(Z,C,p);
endmodule
//Below is the 2 input OR gate defined using gate level
//modeling
module OR_2_gate(output X, input L,M);
or #2 (X,L,M);
endmodule