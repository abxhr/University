// Code your design here
//Abshar Mohammed Aslam
//ID: 2019A7PS0233U

// Gate level modeling code for 2 input OR gate
module OR_2_gate_level (output X, input A, B);
or #10(X,A,B);
endmodule

// Data flow modeling code for 2 input OR gate
module OR_2_data_flow (output Y, input C, D);
assign #10 Y = C | D;
endmodule

//Behavioral modeling code for 2 input OR gate
module OR_2_behavioral (output reg Z, input E, F);
always @ (E or F) begin
if (E==0 & F==0) begin
#10 Z = 0;
end
else
#10 Z = 1;
end
endmodule