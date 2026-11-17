`timescale 100ns/100ns
module tb_impulse_response;

	reg 	reset;
	reg	clk;
	reg 	[11:0] x;
	wire 	[11:0] y;

		always #5 clk = ~clk;	//clock 1MHz
		
		movavg_filter dut(
			.reset(reset), .clk(clk), .x(x), .y(y) 
		);
		
		//stimuli
		initial begin
			clk = 0;
			reset = 1;
			#10;	//1,5 clock cycle
			reset = 0;
			x = 12'b100000000000;
			#10;
			x = 12'd0;
			#100;
			$finish;
		end

			
endmodule
