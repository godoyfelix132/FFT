module div
#(parameter WIDTH=32)
(
	input signed [WIDTH-1:0] dataa,
	input signed [WIDTH-1:0] datab,
	output [WIDTH-1:0] dataout
);

	assign dataout = dataa / datab;

endmodule
