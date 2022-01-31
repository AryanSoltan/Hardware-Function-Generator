module counter8(input clk, input rst, output reg [7:0] cnt);
	always @(posedge clk, posedge rst) begin
		if(rst) 
			cnt <= 8'b0;
		else 
			cnt <= cnt + 1;
	end
endmodule