	wpa2 u0 (
		.address_export                  (<connected-to-address_export>),                  //                  address.export
		.clk_clk                         (<connected-to-clk_clk>),                         //                      clk.clk
		.reset_reset_n                   (<connected-to-reset_reset_n>),                   //                    reset.reset_n
		.write_export                    (<connected-to-write_export>),                    //                    write.export
		.read_export                     (<connected-to-read_export>),                     //                     read.export
		.control_export                  (<connected-to-control_export>),                  //                  control.export
		.altpll_areset_conduit_export    (<connected-to-altpll_areset_conduit_export>),    //    altpll_areset_conduit.export
		.altpll_locked_conduit_export    (<connected-to-altpll_locked_conduit_export>),    //    altpll_locked_conduit.export
		.altpll_phasedone_conduit_export (<connected-to-altpll_phasedone_conduit_export>)  // altpll_phasedone_conduit.export
	);

