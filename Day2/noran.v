// test bensh 
`timescale 10ns/10ps
module Day1_mux_tb();

reg [7:0] a,b;
reg sel;
wire [7:0] Q;

Day1_mux mux(Q,a,b,sel);
initial 
   begin


a <= 8'hff;
b <= 8'haa;
sel <= 1'b1;
#1
a <= 8'h8f;
b <= 8'haa;
sel <= 1'b0;

end
endmodule
