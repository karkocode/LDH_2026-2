module semaforo	(
	input clk_50M,
	input rst,
	output lights
);

	wire 			clear;
	wire [1:0] 	sel;
	wire			top;
	wire 			clk_1s;
	
	clk_1s u0 (
		.rst(rst),
		.clk_50M(clk_50M),
		.clk_out(clk_1s)
	);
	
	semaforo_fsm u1 (
		.rst(rst),
		.clk(clk_1s),
		.sel(sel),
		.clear(clear),
		.top(top),
		.lights(lights)
);
	reg [2:0] state;
	reg [2:0] nextstate;
	
	semaforo_datapath u2 (
		.clk(clk_1s),
		.clear(clear),
		.sel(sel),
		.top(top)
	);

endmodule
