module movavg_filter (
	input 	reset,
	input		clk,
	input 	[11:0] x,
	output	reg [11:0] y
);

	reg 	[11:0] x1,x2,x3;
	wire 	[13:0] sum;
	
	//linha de atraso
	always @(posedge clk) begin
		if(reset) begin
			x1 <= 0;
			x2 <= 0;
			x3 <= 0;
		end else begin
			x1 <= x;
			x2 <= x1;
			x3 <= x2;
			y <= sum[13:2]; //divide por 4 por shift
		end
	end
	
	assign sum = (x + x1 + x2 + x3);
	
endmodule
