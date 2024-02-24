// test bensh 

`timescale 10ns/10ps
module Day1_mux_tb();

reg [7:0] a,b;
reg sel;
wire [7:0] Q;

Day1_mux mux(Q,a,b,sel);
integer i;

initial 
   begin

        for( i=0; i<10;i=i+1)
	    begin
	        a   = $urandom_range (0, 8'hFF);
            b   = $urandom_range (0, 8'hFF);
            sel = $random%2;
		//	$display ("the index is  i= %d",i);
		    #5;
			$monitor( " mux 8 , a=%h , b=%h , sel=%d , Q=%h ,time =%t \t",a,b,sel,Q,$time);
	    end
	
		
    end
endmodule
