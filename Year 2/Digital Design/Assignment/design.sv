// Code your design here
// For check --> 1: Odd		2: Even

module frequency_divider #(parameter CHECK = 1) (fin,reset,fout);
	output reg fout;
	input fin;
	input reset;
  
  	odd_div U1(fin,reset,fout);
  	even_div M1(fin,reset,fout);
  
    endmodule          


module odd_div #(parameter WIDTH = 3,parameter N = 5)(fin,reset,fout);
	input fin;
	input reset;
	output fout;
 
	reg [WIDTH-1:0] pos_count, neg_count;
	wire [WIDTH-1:0] r_nxt;
 
  always @(posedge fin)
 		if (reset)
 			pos_count <=0;
 		else if (pos_count ==N-1) pos_count <= 0;
 		else pos_count<= pos_count +1;
 
  always @(negedge fin)
 		if (reset)
 			neg_count <=0;
 		else  if (neg_count ==N-1) neg_count <= 0;
 		else neg_count<= neg_count +1; 
 
	assign fout = ((pos_count > (N>>1)) | (neg_count > (N>>1))); 
endmodule
 
          
module even_div #(parameter N =6,parameter W = 3) (fin,reset,fout);
  	input fin;
	input reset;
	output fout;
  
	reg [W-1:0] r_reg;
	wire [W-1:0] r_nxt;
	reg clk_track;
 
    always @(posedge fin or posedge reset)
		begin
          if (reset)
     		begin
        		r_reg <= 0;
				clk_track <= 1'b0;
     		end
 
 		  else if (r_nxt == N)
 	   		begin
	     		r_reg <= 0;
	     		clk_track <= ~clk_track;
	   		end
 
  		  else 
            begin
      			r_reg <= r_nxt;
			end
        end	
        
 	assign r_nxt = r_reg+1;   	      
 	assign fout = clk_track;
  
	endmodule