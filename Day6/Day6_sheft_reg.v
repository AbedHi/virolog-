// shift register 


module Day6_sheft_reg( out, clk,serial,rst);
		input clk,rst;
		input  serial;
		output reg [3:0] out;
		
		// local param 
		
		//reg [3:0] D;
		
		
		always@( posedge clk) begin 
			if( rst)
			out  <= 0;
			else 
			out <= {out[2:0],serial};
		end
		
	endmodule
	