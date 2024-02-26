// test mood for the rising and falling edge detector
`timescale 1ns/10ps

module Day3_rising_falling_tb();

    reg rst,clk=1'b0,D;
	wire  Q_falling,Q_rising;
	
	Day3_rising_falling detector( Q_rising,Q_falling, rst,D, clk);
	
	always #1 clk=~clk;
	
	initial 
	    begin
			D=1'b0;
			#2;
    		D=1'b1;
			#4
			D=1'b0;
			#6
			D=1'b1;
			#4
			D=1'b0;
			#2;
    		D=1'b1;
			#4
			D=1'b0;
			
	end
	
	initial 
	    begin
			rst=1'b0;
			#8;
        	rst=1'b1;
	end
	

endmodule
	
