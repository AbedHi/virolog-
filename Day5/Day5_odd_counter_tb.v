// 
`timescale 10ns/10ps

module Day5_odd_counter_tb();
reg clk =0,rst=0;
wire [7:0] count;

Day5_odd_counter counert(count, clk, rst);

always #1 clk=~clk;

initial 
begin 
	rst = 1'b0;
	# 20;
	rst=1'b1;
	#10
	rst = 1'b0;
	#5;
	$monitor( " clk=%b,count =%h ,time =%t \t",clk,count,$time);
end 
endmodule