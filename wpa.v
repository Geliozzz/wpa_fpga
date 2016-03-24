module wpa
(
	input clk
);

reg [31 : 0] write;

wpa2 nios(
				 .clk_clk(clk),
				 .write_export(write)
				);


endmodule