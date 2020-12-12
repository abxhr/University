// Code your design here
// Abshar Mohammed Aslam
// ID: 2019A7PS0233U


module assignment2_b(p,q,r,x,y);		//x - AND operation | y - OR operation
  input p,q,r;
  output x,y;
  wire a, b;
  
  and_Gate G1 (a,p,q);
  and_Gate G3 (x,a,r);
  or_Gate G2 (b,p,q);
  or_Gate G4 (y,b,r);
endmodule


module and_Gate(n,l,m);				//Module for AND gate
  input l,m;
  output n;
  and (n,l,m);
endmodule


module or_Gate (n,l,m);				//Module for OR gate
  input l,m;
  output n;
  assign n = l|m;
endmodule