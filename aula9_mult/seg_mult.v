module seg_mult (
	input rst,
	input clk,
	input 	[3:0] a,
	input 	[3:0] b,
	output	[7:0] m
);
	mult_fsm fsml (
		.rst(rst),
		.clk(clk),
		//sinais de controle
	);
	
	mult_datapath dp(
		//dados
		.a(),
		.b(),
		.m(),
		//sinais de controle
	);

endmodule
