module cos
#(parameter WIDTH=32)
(
    input [(WIDTH-1):0]x,
	 
	 output [(WIDTH-1):0] out
);

wire [(WIDTH-1):0]addr_wire;


ROM_IN 
#(.DATA_WIDTH(WIDTH), .ADDR_WIDTH(WIDTH))
rom_1
(
	.addr(addr_wire),
	.clk(clk), 
	.q(q)
);

exp
#(.WIDTH(WIDTH))
exp_2_cos
(
	.dataa(),
	.datab(),
	.dataout()
);

exp
#(.WIDTH(WIDTH))
exp_4_cos
(
	.dataa(),
	.datab(),
	.dataout()
);