`define STATE_IDLE 2'b00
`define STATE_IDLE 2'b00
`define STATE_DONE 2'b00

module mult_fsm (
	input rst,
	input clk,
	//sinais de estado do datapath
	input zero
	//sinais de entrada do usuario
	input start,
	//sinais de controle para o datapath
	output load
	output clear
	//sinais de saida para o usuario
	output done
);
	reg [1:0] state;
	reg [1:0] nextstate;

	//motor de estados
	always@(posedge clk) begin
	
	end
	//lógica do próximo estado
	always @(*) begin
	
	end

endmodule
