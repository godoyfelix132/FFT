module add_sub_sin
#(parameter WIDTH=32)
(
	input signed [WIDTH-1:0] datax,
	input signed [WIDTH-1:0] data3,
	input signed [WIDTH-1:0] data5,
	input signed [WIDTH-1:0] data7,
	input signed [WIDTH-1:0] data9,
	input signed [WIDTH-1:0] data11,
	output [WIDTH-1:0] dataout
);

	assign dataout = datax - data3 + data5 - data7 + data9 - data11;

endmodule
