module gate_counter (
	input rst,
	input clk, //clock 1s
	input enable,
	input dir, //se dir=1, motor subindo, se dir = 0, descendo
	output [9:0] led_bar,
	output end_stop,	//end_stop = 1, portão totalmente aberto
	output start_stop //start_stop = 1, início do processo
)
	reg [9:0] count;
	reg [9:0] nextCount;
	
	//motor de estados
	always @(posedge clk) begin		
		if(rst) begin //reset síncrono
			state <= `STATE_CLOSED;
		end else begin
			state <= nextState;
		end
	end
	
	//lógica do próximo estado
	always @(*) begin
	end
	
	//lógica de saída
	always @(*) begin
	end

endmodule

