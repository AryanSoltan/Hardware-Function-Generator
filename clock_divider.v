module clock_divider(input clk, input [7:0] par_load, input ld, input rst, output reg clk_div);
	reg [7:0] count;
	wire CO;
	always @(posedge clk) begin 
		if(ld || count == 8'b0) 
			count <= par_load;
		else 
			count <= count + 1;
	end
	assign CO = &count;
	always @(posedge clk) begin 
		if(rst) 
			clk_div = 1'b0;
		else begin 
			if(CO) 	
				clk_div <= ~clk_div;
			else 
				clk_div <= clk_div;
		end
	end
endmodule