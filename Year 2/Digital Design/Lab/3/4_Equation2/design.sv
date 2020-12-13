// Code your design here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U


module struc_model (A,B,C,Y);
  input A,B,C;
  output Y;
  
  assign Y = (A|B|C)&(A|B)&(A|C);
endmodule