
module ROM_IN_TB ();
 
parameter DATA_WIDTH = 32;
parameter ADDR_WIDTH = 32;

reg clk_tb = 0;
reg reset_tb = 1;

wire [(DATA_WIDTH-1):0] q_tb;

FFF_TOP
#(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH))
FFT
(
	.clk(clk_tb),
	.reset(reset_tb),

	.q(q_tb)
);


always @(*)
begin
	#0	 reset_tb = 0;
	#10 clk_tb <= ~clk_tb; 
end

endmodule 