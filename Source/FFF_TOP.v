module FFF_TOP
#(parameter DATA_WIDTH=32, parameter ADDR_WIDTH=64)
(
    input clk,
    input reset,
	 
	 output [(DATA_WIDTH-1):0] q
);

wire [(DATA_WIDTH-1):0]addr_wire;


ROM_IN 
#(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH))
rom_1
(
	.addr(addr_wire),
	.clk(clk), 
	.q(q)
);

binary_counter
#(.WIDTH(DATA_WIDTH))
counter
(
	.clk(clk), 
	.enable(1'b1), 
	.reset(reset),
	.count(addr_wire)
);


//Counter_With_Parameter
//#(
//	// Parameter Declarations
//	.MAXIMUM_VALUE(9'b100011000),
//	.INIT_VALUE(9'b000000001)
//)
//counter
//(
//	// Input Ports
//	.clk(clk),
//	.reset(reset),
//	.enable(1'b1),
//	
//	// Output Ports
//	.counter(addr_wire)
//);


endmodule