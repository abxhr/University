module testbench;
  reg fin,reset;
  wire fout;
 
  initial
    begin
    	$dumpfile("dump.vcd");
      $dumpvars(1, testbench);
      	fin= 1'b0;
      	#5 reset=1'b1;
        #10 reset=1'b0;
        #500 $finish;
    end
     
  always
        #5  fin=~fin; 
 
  frequency_divider m1(fin,reset,fout);
  
  initial
    $monitor("fin = %b, reset = %b, fout = %b",fin,reset,fout);
 
endmodule