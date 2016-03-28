module wpa
(
	input clk,
	input reset
);

wire [31 : 0] write;
wire [31 : 0] read;
wire [7 : 0]  address;
reg [7 : 0]  control;
wire error;

wpa2 nios(
				 .clk_clk(clk),
				 .write_export(write),
				 .read_export(read),
				 .control_export(control),
				 .address_export(address),
				 .reset_reset_n(reset)
				);
				
sha1 sha(
				 .clk(clk),
				 .address(address),
				 .write_data(write),
				 .read_data(read),
				 .reset_n(reset),
				 .cs(control[0]),
				 .we(control[1]),
				 .error(error)
				);
				
//assign control[2] = error;
				

endmodule