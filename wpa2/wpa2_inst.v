	wpa2 u0 (
		.address_export                  (<connected-to-address_export>),                  //                  address.export
		.altpll_areset_conduit_export    (<connected-to-altpll_areset_conduit_export>),    //    altpll_areset_conduit.export
		.altpll_locked_conduit_export    (<connected-to-altpll_locked_conduit_export>),    //    altpll_locked_conduit.export
		.altpll_phasedone_conduit_export (<connected-to-altpll_phasedone_conduit_export>), // altpll_phasedone_conduit.export
		.clk_clk                         (<connected-to-clk_clk>),                         //                      clk.clk
		.control_export                  (<connected-to-control_export>),                  //                  control.export
		.read_export                     (<connected-to-read_export>),                     //                     read.export
		.reset_reset_n                   (<connected-to-reset_reset_n>),                   //                    reset.reset_n
		.write_export                    (<connected-to-write_export>),                    //                    write.export
		.ram_wire_addr                   (<connected-to-ram_wire_addr>),                   //                 ram_wire.addr
		.ram_wire_ba                     (<connected-to-ram_wire_ba>),                     //                         .ba
		.ram_wire_cas_n                  (<connected-to-ram_wire_cas_n>),                  //                         .cas_n
		.ram_wire_cke                    (<connected-to-ram_wire_cke>),                    //                         .cke
		.ram_wire_cs_n                   (<connected-to-ram_wire_cs_n>),                   //                         .cs_n
		.ram_wire_dq                     (<connected-to-ram_wire_dq>),                     //                         .dq
		.ram_wire_dqm                    (<connected-to-ram_wire_dqm>),                    //                         .dqm
		.ram_wire_ras_n                  (<connected-to-ram_wire_ras_n>),                  //                         .ras_n
		.ram_wire_we_n                   (<connected-to-ram_wire_we_n>)                    //                         .we_n
	);

