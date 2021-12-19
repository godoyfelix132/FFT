module mult
#(parameter WIDTH=16)
(
	input signed [WIDTH-1:0] dataa,
	input signed [WIDTH-1:0] datab,
	output [2*WIDTH-1:0] dataout
);

	assign dataout = dataa * datab;

endmodule
