
module wpa2 (
	address_export,
	altpll_areset_conduit_export,
	altpll_locked_conduit_export,
	altpll_phasedone_conduit_export,
	clk_clk,
	control_export,
	read_export,
	reset_reset_n,
	write_export,
	ram_wire_addr,
	ram_wire_ba,
	ram_wire_cas_n,
	ram_wire_cke,
	ram_wire_cs_n,
	ram_wire_dq,
	ram_wire_dqm,
	ram_wire_ras_n,
	ram_wire_we_n);	

	output	[7:0]	address_export;
	input		altpll_areset_conduit_export;
	output		altpll_locked_conduit_export;
	output		altpll_phasedone_conduit_export;
	input		clk_clk;
	inout	[7:0]	control_export;
	input	[31:0]	read_export;
	input		reset_reset_n;
	output	[31:0]	write_export;
	output	[11:0]	ram_wire_addr;
	output	[1:0]	ram_wire_ba;
	output		ram_wire_cas_n;
	output		ram_wire_cke;
	output		ram_wire_cs_n;
	inout	[15:0]	ram_wire_dq;
	output	[1:0]	ram_wire_dqm;
	output		ram_wire_ras_n;
	output		ram_wire_we_n;
endmodule
