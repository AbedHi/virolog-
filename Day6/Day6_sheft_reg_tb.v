// test bench of Day 5

`timescale 10ns/10ps

module Day6_sheft_reg_tb();

		reg clk = 1'b0,rst = 1'b0;
		reg  serial;
		wire  [3:0] out;
		
		Day6_sheft_reg sheft(out, clk,serial,rst);
		
		always #1 clk= ~ clk;
		
		integer i;
		
		initial 
		begin 
			
			for ( i=0; i<50; i= i+1)
				begin 
				serial = $urandom_range (0,1'b1);
				#1;
				
					if(i==20)begin
					rst=1;
					#3;
					end
					
					if(i==27)begin
					rst=0;
					#1;
					end
								
				end
			
			
			$monitor (" clk=%b,out =%h ,serial = %b ,time =%t \t",clk,out,serial,$time);
		end
	endmodule