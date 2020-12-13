// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module uni_shift_reg (shift_L, shift_R, clk, parallel_in, mode, parallel_out);
  input shift_L, shift_R, clk; 
  input [3:0] parallel_in; 
  input [1:0] mode;
  output reg [3:0] parallel_out;
  
  always @ (negedge clk) begin
    case (mode)
      0: parallel_out <= parallel_out; // for mode 0 data retain as it is
      
      1: parallel_out <= {parallel_out [2:0], shift_L}; // for mode 1 shift left
      
      2: parallel_out <= {shift_R, parallel_out [3:1] }; // for mode 2 shift right
      3: parallel_out <= parallel_in; // for mode 3 parallel data in
      
      default: parallel_out <= 4'bx;
    endcase
  end
endmodule