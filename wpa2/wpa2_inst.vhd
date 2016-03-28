	component wpa2 is
		port (
			address_export                  : out   std_logic_vector(7 downto 0);                     -- export
			altpll_areset_conduit_export    : in    std_logic                     := 'X';             -- export
			altpll_locked_conduit_export    : out   std_logic;                                        -- export
			altpll_phasedone_conduit_export : out   std_logic;                                        -- export
			clk_clk                         : in    std_logic                     := 'X';             -- clk
			control_export                  : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			read_export                     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			reset_reset_n                   : in    std_logic                     := 'X';             -- reset_n
			write_export                    : out   std_logic_vector(31 downto 0);                    -- export
			ram_wire_addr                   : out   std_logic_vector(11 downto 0);                    -- addr
			ram_wire_ba                     : out   std_logic_vector(1 downto 0);                     -- ba
			ram_wire_cas_n                  : out   std_logic;                                        -- cas_n
			ram_wire_cke                    : out   std_logic;                                        -- cke
			ram_wire_cs_n                   : out   std_logic;                                        -- cs_n
			ram_wire_dq                     : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			ram_wire_dqm                    : out   std_logic_vector(1 downto 0);                     -- dqm
			ram_wire_ras_n                  : out   std_logic;                                        -- ras_n
			ram_wire_we_n                   : out   std_logic                                         -- we_n
		);
	end component wpa2;

	u0 : component wpa2
		port map (
			address_export                  => CONNECTED_TO_address_export,                  --                  address.export
			altpll_areset_conduit_export    => CONNECTED_TO_altpll_areset_conduit_export,    --    altpll_areset_conduit.export
			altpll_locked_conduit_export    => CONNECTED_TO_altpll_locked_conduit_export,    --    altpll_locked_conduit.export
			altpll_phasedone_conduit_export => CONNECTED_TO_altpll_phasedone_conduit_export, -- altpll_phasedone_conduit.export
			clk_clk                         => CONNECTED_TO_clk_clk,                         --                      clk.clk
			control_export                  => CONNECTED_TO_control_export,                  --                  control.export
			read_export                     => CONNECTED_TO_read_export,                     --                     read.export
			reset_reset_n                   => CONNECTED_TO_reset_reset_n,                   --                    reset.reset_n
			write_export                    => CONNECTED_TO_write_export,                    --                    write.export
			ram_wire_addr                   => CONNECTED_TO_ram_wire_addr,                   --                 ram_wire.addr
			ram_wire_ba                     => CONNECTED_TO_ram_wire_ba,                     --                         .ba
			ram_wire_cas_n                  => CONNECTED_TO_ram_wire_cas_n,                  --                         .cas_n
			ram_wire_cke                    => CONNECTED_TO_ram_wire_cke,                    --                         .cke
			ram_wire_cs_n                   => CONNECTED_TO_ram_wire_cs_n,                   --                         .cs_n
			ram_wire_dq                     => CONNECTED_TO_ram_wire_dq,                     --                         .dq
			ram_wire_dqm                    => CONNECTED_TO_ram_wire_dqm,                    --                         .dqm
			ram_wire_ras_n                  => CONNECTED_TO_ram_wire_ras_n,                  --                         .ras_n
			ram_wire_we_n                   => CONNECTED_TO_ram_wire_we_n                    --                         .we_n
		);

