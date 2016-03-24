
module wpa2 (
	address_export,
	clk_clk,
	reset_reset_n,
	write_export,
	read_export,
	control_export,
	altpll_areset_conduit_export,
	altpll_locked_conduit_export,
	altpll_phasedone_conduit_export);	

	output	[7:0]	address_export;
	input		clk_clk;
	input		reset_reset_n;
	output	[31:0]	write_export;
	input	[31:0]	read_export;
	inout	[7:0]	control_export;
	input		altpll_areset_conduit_export;
	output		altpll_locked_conduit_export;
	output		altpll_phasedone_conduit_export;
endmodule
