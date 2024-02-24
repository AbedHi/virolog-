// day 1 design a simple mux 8*3


module Day1_mux (Q, a,b,sel);

input [7:0] a,b;
input  sel;
output [7:0] Q;
//gjgjhkhjkh
assign Q = sel ? b : a;

endmodule
