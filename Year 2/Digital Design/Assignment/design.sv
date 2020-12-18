module frequency_divider #(parameter W = 4,parameter N = 8)(fin,reset,fout);
	output reg fout;
	input fin;
	input reset;
  
  	reg [W-1:0] positive_c, negetive_c;
 
  	always @(posedge fin)
 		if (reset)
 			positive_c <=0;
  		else  if (positive_c ==N-1) positive_c <= 0;
 		else positive_c<= positive_c +1; 
 
  	always @(negedge fin)
 		if (reset)
 			negetive_c <=0;
  		else  if (negetive_c ==N-1) negetive_c <= 0;
 		else negetive_c<= negetive_c +1; 
  
  assign fout = (N%2==0)?((positive_c<N/2)?1'b0:1'b1):((positive_c > (N>>1)) | (negetive_c > (N>>1)));
  
endmodule          