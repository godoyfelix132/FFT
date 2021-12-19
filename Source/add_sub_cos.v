module add_sub_sin
#(parameter WIDTH=32)
(
	input signed [WIDTH-1:0] data2,
	input signed [WIDTH-1:0] data4,
	input signed [WIDTH-1:0] data6,
	input signed [WIDTH-1:0] data8,
	input signed [WIDTH-1:0] data10,
	output [WIDTH-1:0] dataout
);

	assign dataout = 1b'1 - data3 + data5 - data7 + data9 - data11;

endmodule
