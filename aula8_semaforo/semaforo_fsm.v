`define STATE_RED_LOAD 		3'd1
`define STATE_RED 			3'd2
`define STATE_YELLOW_LOAD 	3'd3
`define STATE_YELLOW 		3'd4
`define STATE_GREEN_LOAD 	3'd0
`define STATE_GREEN 			3'd5

module semaforo_fsm (
	input				rst,
	input				clk,
	//sinais de controle indo ao datapath
	output reg	[1:0] sel,
	output reg		clear,
	//sinais de estado do datapath
	input				top,
	//saidas de controle para o dispositivo
	output reg [2:0] lights
);
	reg [2:0] state;
	reg [2:0] nextstate;
	
	//motor de estados
	always @(posedge clk) begin
		if(rst)
			state <= `STATE_RED_LOAD;
		else
			state <= nextstate;
	end
	
	//lógica do próximo estado
	always @(*) begin
	
		case (state)
		
			`STATE_RED_LOAD: nextstate = `STATE_RED;
			`STATE_RED: begin
				if(top)
					nextstate = `STATE_GREEN_LOAD;
				else
					nextstate = `STATE_RED;
			end

			
			`STATE_GREEN_LOAD: nextstate =`STATE_GREEN;
			`STATE_GREEN: begin
				if(top)
					nextstate = `STATE_YELLOW_LOAD;
				else
					nextstate = `STATE_GREEN;
			end
			
			
			`STATE_YELLOW_LOAD: nextstate = `STATE_YELLOW;
			`STATE_YELLOW: begin
				if(top)
					nextstate = `STATE_RED_LOAD;
				else
					nextstate = `STATE_YELLOW;
			end
		endcase	
	end
			//lógica das saídas
			always @(*) begin
			clear = 0;
				case(state)
				
					`STATE_RED_LOAD: begin
						clear = 1;
						lights = 3'b100;
						sel = 2'd0;
					end
					`STATE_RED: begin
						lights = 3'b100;
						sel = 2'd0;
					end
					
					`STATE_YELLOW_LOAD: begin
						clear = 1;
						lights = 3'b010;
						sel = 2'd1;
					end
					`STATE_YELLOW: begin
						lights = 3'b010;
						sel = 2'd1;
					end
					
					`STATE_GREEN_LOAD: begin
						clear = 1;
						lights = 3'b001;
						sel = 2'd2;
					end
					`STATE_GREEN: begin
						lights = 3'b001;
						sel = 2'd2;
					end
				endcase
			end
endmodule
