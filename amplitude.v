module amplitude(input [7:0]wave_out, input [1:0] sel, output [7:0]wave_scale);
	assign wave_scale = (sel == 2'b00) ? wave_out: (sel == 2'b01) ? wave_out >> 1: (sel == 2'b10) ? wave_out >> 2: wave_out >> 3;
endmodule