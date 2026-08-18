module bin7seg(
    input  wire [3:0] bin,
    output reg  [7:0] hex
);

always @(*) begin
    case(bin)
        4'h0: hex = 8'b10111111;
        4'h1: hex = 8'b10000110;
        4'h2: hex = 8'b11101101;
        4'h3: hex = 8'b11001111;
        4'h4: hex = 8'b11100110;
        4'h5: hex = 8'b11101101;
        4'h6: hex = 8'b11111101;
        4'h7: hex = 8'b10000111;
        4'h8: hex = 8'b11111111;
        4'h9: hex = 8'b11101111;
        4'hA: hex = 8'b11110111;
        4'hB: hex = 8'b11111100;
        4'hC: hex = 8'b10111001;
        4'hD: hex = 8'b11011110;
        4'hE: hex = 8'b11111001;
        4'hF: hex = 8'b11110001;
    endcase
end

endmodule