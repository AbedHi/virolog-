// day 3
//Date  25/02/2023
// the module will detect the rising and falling edge of clk 

module Day3_rising_falling ( Q_rising,Q_falling, rst,D, clk);

    input rst,clk,D;
	output  Q_falling,Q_rising;
	
	reg Q=1'b0,rst_in=1'b0;
	
    begin 	
	// save old input
	    always@( posedge clk)
	        begin 
		        if (rst)
			    rst_in <= 1'b1;
			    else
			    Q <=D;
		    end
	
	    assign Q_rising = (~Q&D)&(~rst_in);
     	assign Q_falling = (Q&~D)&(~rst_in);
	end
	endmodule