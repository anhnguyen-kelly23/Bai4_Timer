	component unsaved is
		port (
			clk_clk                       : in  std_logic                     := 'X';             -- clk
			reset_reset_n                 : in  std_logic                     := 'X';             -- reset_n
			switches_0_conduit_end_export : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			hexs_0_conduit_end_export     : out std_logic_vector(6 downto 0);                     -- export
			hexs_1_conduit_end_export     : out std_logic_vector(6 downto 0);                     -- export
			hexs_2_conduit_end_export     : out std_logic_vector(6 downto 0);                     -- export
			hexs_3_conduit_end_export     : out std_logic_vector(6 downto 0);                     -- export
			hexs_4_conduit_end_export     : out std_logic_vector(6 downto 0);                     -- export
			hexs_5_conduit_end_export     : out std_logic_vector(6 downto 0)                      -- export
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk                       => CONNECTED_TO_clk_clk,                       --                    clk.clk
			reset_reset_n                 => CONNECTED_TO_reset_reset_n,                 --                  reset.reset_n
			switches_0_conduit_end_export => CONNECTED_TO_switches_0_conduit_end_export, -- switches_0_conduit_end.export
			hexs_0_conduit_end_export     => CONNECTED_TO_hexs_0_conduit_end_export,     --     hexs_0_conduit_end.export
			hexs_1_conduit_end_export     => CONNECTED_TO_hexs_1_conduit_end_export,     --     hexs_1_conduit_end.export
			hexs_2_conduit_end_export     => CONNECTED_TO_hexs_2_conduit_end_export,     --     hexs_2_conduit_end.export
			hexs_3_conduit_end_export     => CONNECTED_TO_hexs_3_conduit_end_export,     --     hexs_3_conduit_end.export
			hexs_4_conduit_end_export     => CONNECTED_TO_hexs_4_conduit_end_export,     --     hexs_4_conduit_end.export
			hexs_5_conduit_end_export     => CONNECTED_TO_hexs_5_conduit_end_export      --     hexs_5_conduit_end.export
		);

