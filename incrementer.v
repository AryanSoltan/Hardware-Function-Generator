module incrementer(input [7:0] phase_cntrl, input rst, clk, output reg [7:0] w);
	always @(posedge clk) begin
		if(rst) 
			w <= 8'b0;
		else
			w <= w + phase_cntrl;
	end
endmodule