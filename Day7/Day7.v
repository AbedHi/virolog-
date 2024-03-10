

module Day7 ( out, clk, rst);
	input clk ,rst;
	output reg [3:0]out;
	// local param
	// reg [3:0] Q ,D;
	wire N;
	

	begin
		always@ (posedge clk)
			begin 
				if (rst)
				out = 4'hF;
				else 
				out = {out[2:0],N};
				
			end
			
		assign N = out[1]^out[3];	
	end
endmodule