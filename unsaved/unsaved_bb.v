
module unsaved (
	clk_clk,
	reset_reset_n,
	switches_0_conduit_end_export,
	hexs_0_conduit_end_export,
	hexs_1_conduit_end_export,
	hexs_2_conduit_end_export,
	hexs_3_conduit_end_export,
	hexs_4_conduit_end_export,
	hexs_5_conduit_end_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[31:0]	switches_0_conduit_end_export;
	output	[6:0]	hexs_0_conduit_end_export;
	output	[6:0]	hexs_1_conduit_end_export;
	output	[6:0]	hexs_2_conduit_end_export;
	output	[6:0]	hexs_3_conduit_end_export;
	output	[6:0]	hexs_4_conduit_end_export;
	output	[6:0]	hexs_5_conduit_end_export;
endmodule
