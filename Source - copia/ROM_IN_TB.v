`timescale 10ns/10ps

module ROM_IN_TB ();
 
  parameter DATA_WIDTH = 9;
  parameter ADDR_WIDTH = 9;
   
	reg clk_tb = 0;
	reg [(ADDR_WIDTH-1):0]addr_tb = 0;
	wire [(DATA_WIDTH-1):0] q_tb;
	
	ROM_IN 
	#(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH))
	rom_1
	(
		.addr(addr_tb),
		.clk(clk_tb), 
		.q(q_tb)
	);
  
  always @(*)
  begin
    #10 clk_tb <= ~clk_tb; 
  end
  always @(*)
  begin
	#60	addr_tb <= addr_tb + 1;
  end
	
endmodule 