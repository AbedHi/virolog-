
`timescale 10ns/10ps
module Day7_tb();

	reg clk =0 ,rst;
	wire [3:0]out;
	
	Day7 mod7( out, clk, rst);
	
	always #1 clk =~ clk ; 
	
	initial 
	begin
	#3;
	rst=1;
	#5 
	rst=0;
	#20;
	rst=1;
	#5 
	rst=0;
	#20;
	end
	
endmodule

	