// Code your testbench here

// Write a Verilog code and testbench to implement a frequency divider. Input frequency 'fin', output frequency 'fout' (less than "fin") with 50 % duty cycle. (Hint: you can use parameters and all).

module tb;
  reg fin,reset;
  wire fout;
 
  initial
    begin
    	$dumpfile("dump.vcd");
    	$dumpvars(1, tb);
      	fin= 1'b0;
      	#5 reset=1'b1;
        #10 reset=1'b0;
        #500 $finish;
    end
     
  always
        #5  fin=~fin; 
 
  odd_div t1(fin,reset,fout);
  
  initial
    $monitor("clk=%b,reset=%b,clk_out=%b",fin,reset,fout);
 
endmodule