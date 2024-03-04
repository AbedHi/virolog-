// Day 4 

// design 8-bit ALU 

module Day4_8b_ALU( out,a,b,op,sel);

    input [7:0] a , b;
	input [2:0] op;
	output reg [7:0] out ;
	output [2:0] sel;
 
 // local parameter
 //wire [2:0] sel; 
 
 //---
  assign sel=b[2:0];
  
	always@ (a,b,op) 
	begin
		 case (op)
				3'b000: out = a+b;   
				3'b001: out = a-b;
				// shift left
				3'b010 : begin
						case (sel)
						3'b000: out = a;   
						3'b001: out = {a[6:0],1'b0};
						3'b010: out = {a[5:0],2'b00};	
						3'b011: out = {a[4:0],3'b000};
						default out = a; 
						endcase
				end
				// sheft right
				3'b011 : begin
						case (sel)
						3'b000: out = a;   
						3'b001: out = {1'b0,a[7:1]};
						3'b010: out = {2'b00,a[7:2]};	
						3'b011: out = {3'b000,a[7:3]};
						default out = a; 
						endcase
				end
				//----
				3'b100: out = a&b;
				3'b101: out = a|b;
				3'b110: out = a^b;
				3'b100: if (a==b)
							out=3'b111;
							else
							out=3'b000;
					default out=3'b000;
				endcase
			end
endmodule	
								
					