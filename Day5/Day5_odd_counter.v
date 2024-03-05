// Day 5 
// Design and verify an 8-bit odd counter

module Day5_odd_counter (count, clk, rst);
	input clk , rst;
	output reg [7:0] count =8'h00;
	
	// local param
	wire [7:0] D;
		
	always@( posedge clk)
		begin 
			if (rst)
			count <= 8'h01;
			else
			count <= D ;
		end
		
	assign   D = count + 8'h02;
endmodule