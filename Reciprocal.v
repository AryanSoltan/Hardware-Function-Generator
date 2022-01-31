module Reciprocal(input clk, input [7:0] cnt, output reg [7:0] reciprocal);
	always @(posedge clk) begin 	
		reciprocal <= 255 / (255 - cnt);
	end
endmodule