	component wpa2 is
		port (
			address_export                  : out   std_logic_vector(7 downto 0);                     -- export
			clk_clk                         : in    std_logic                     := 'X';             -- clk
			reset_reset_n                   : in    std_logic                     := 'X';             -- reset_n
			write_export                    : out   std_logic_vector(31 downto 0);                    -- export
			read_export                     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			control_export                  : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			altpll_areset_conduit_export    : in    std_logic                     := 'X';             -- export
			altpll_locked_conduit_export    : out   std_logic;                                        -- export
			altpll_phasedone_conduit_export : out   std_logic                                         -- export
		);
	end component wpa2;

	u0 : component wpa2
		port map (
			address_export                  => CONNECTED_TO_address_export,                  --                  address.export
			clk_clk                         => CONNECTED_TO_clk_clk,                         --                      clk.clk
			reset_reset_n                   => CONNECTED_TO_reset_reset_n,                   --                    reset.reset_n
			write_export                    => CONNECTED_TO_write_export,                    --                    write.export
			read_export                     => CONNECTED_TO_read_export,                     --                     read.export
			control_export                  => CONNECTED_TO_control_export,                  --                  control.export
			altpll_areset_conduit_export    => CONNECTED_TO_altpll_areset_conduit_export,    --    altpll_areset_conduit.export
			altpll_locked_conduit_export    => CONNECTED_TO_altpll_locked_conduit_export,    --    altpll_locked_conduit.export
			altpll_phasedone_conduit_export => CONNECTED_TO_altpll_phasedone_conduit_export  -- altpll_phasedone_conduit.export
		);

