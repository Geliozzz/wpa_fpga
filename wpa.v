module wpa
(
	input clk,
	input reset,
	output [ 12: 0] sdram_addr,
	output [  1: 0] sdram_ba,
	output 			 sdram_cas_n,
	output			 sdram_cke,
	output			 sdram_cs_n,
	inout	 [ 15: 0] sdram_dq,
	output [  1: 0] sdram_dqm,
	output			 sdram_ras_n,
	output			 sdram_we_n,
	output			 sdram_clk
	
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
				 .reset_reset_n(reset),
				 
				 .ram_wire_addr(sdram_addr),
				 .ram_wire_ba(sdram_ba),
				 .ram_wire_cas_n(sdram_cas_n),
				 .ram_wire_cke(sdram_cke),
				 .ram_wire_cs_n(sdram_cs_n),
				 .ram_wire_dq(sdram_dq),
				 .ram_wire_dqm(sdram_dqm),
				 .ram_wire_ras_n(sdram_ras_n),
				 .ram_wire_we_n(sdram_we_n)
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