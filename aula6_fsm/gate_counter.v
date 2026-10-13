module gate_counter (
	input rst,
	input clk, //clock 1s
	input enable,
	input dir,
	output [9:0] led_bar,
	output end_stop,
	output start_stop
)
	reg [1:0] count;
	reg [1:0] nextCount;
	
	//motor de estados
	always @(posedge clk) begin
	end
	
	//lógica do próximo estado
	always @(*) begin
	end
	
	//lógica de saída
	always @(*) begin
	end

endmodule

