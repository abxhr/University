// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module dmux_1_4(Y, I, S);
  input I;
  input [1:0]S;
  output reg [3:0]Y;
  
  always@(*) 
    begin
    if(S == 2'b00) begin Y[0] = I; Y[3:1] = 3'b000; end
    
    else if(S == 2'b01) begin Y[1] = I; Y[3:2] = 2'b00; Y[0] = 0; end
    
    else if(S == 2'b10) begin Y[2] = I; Y[1:0] = 2'b00; Y[3] = 0; end
    
    else if(S == 2'b11) begin Y[3] = I; Y[2:0] = 3'b000; end
    else Y[3:0] = 4'b000;
  	end
endmodule