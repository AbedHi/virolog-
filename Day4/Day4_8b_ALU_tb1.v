//

`timescale 10ns/10ps

module Day4_8b_ALU_tb1();

reg [7:0] a=0,b=0;
reg [2:0] op=0;
wire [7:0] out; 


// local param
reg clk = 1'b0;
// clok
always #1 clk=~clk;
integer i,j; 

Day4_8b_ALU ALU( out,a,b,op);

	//	always #1 a= a+1 ;
	//	always #2 b= b+1 ;
	//	always #16 op = op+1 ;
		
	initial 
	begin 
				
	for (i=0;i<8;i=i+1)
	begin
		for (j=0;j<8;j=j+1)
		begin 
		    a = $urandom_range(0, 8'hFF);
			b = $urandom_range(0, 8'hFF);
			op = 3'(i) ;
			$monitor( " ALU , a=%h , b=%h , op=%d , out=%h ,time =%t \t",a,b,op,out,$time);
			#1;
		end
	end
	
	end
endmodule
	
		