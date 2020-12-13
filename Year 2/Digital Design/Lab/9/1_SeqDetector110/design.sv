// Code your design here
// Abshar Mohammed Aslam
// 2019A7PS0233U

module detector_110 (input x, clk, rst, output reg z);
  
  parameter [1:0] S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
  reg [1:0] present_state;
  
  always @ (posedge clk, posedge rst) begin
    z <= (present_state == S3) ? 1 : 0;
    
    if (rst) begin
      z <= 1'b0;
      present_state <= S0;
    end
    
    else begin
      case (present_state)
        S0: begin
          if (x) present_state <= #1 S1;
          else present_state <= #1 S0;
        end
        S1: begin
          if (x) present_state <= #1 S2;
          else present_state <= #1 S0;
        end
        S2: begin
          if (x) present_state <= #1 S2;
          else present_state <= #1 S3;
        end
        S3: begin
          if (x) present_state <= #1 S1;
          else present_state <= #1 S0;
        end
      endcase
    end
    
    z<= (present_state == S3) ? 1 : 0;
  end
endmodule