return {
	{
		"folke/twilight.nvim",
	},
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = 150,
			},
			plugins = {
				alacritty = {
					enabled = true,
					font = "16",
				},
			},
		},
		keys = {
			{ "<leader>uz", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
		},
	},
}
