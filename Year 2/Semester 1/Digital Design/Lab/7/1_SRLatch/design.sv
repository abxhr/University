// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS023U

module SR_Latch (S,R,C,Qb,Q);
input C,S,R;
output Q,Qb;
wire W1,W2;
nand  M1(W1,S,C);
nand  M2(W2,R,C);
nand  M3(Q,Qb,W1);
nand  M4(Qb,W2,Q);
endmodule