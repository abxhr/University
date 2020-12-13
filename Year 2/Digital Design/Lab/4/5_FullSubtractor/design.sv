// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U


module fullsub(diff, borrow, p, q, r);
  input p, q, r;
  output diff, borrow;
  
  assign diff = (p^q)^r;
  assign borrow = ((~p&q) | (r & ~(p^q)));
endmodule