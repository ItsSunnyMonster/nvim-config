-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	dependencies = "HiPhish/rainbow-delimiters.nvim",
	---@module "ibl"
	---@type ibl.config
	opts = {
		scope = {
			highlight = {
				"RainbowDelimiterRed",
				"RainbowDelimiterYellow",
				"RainbowDelimiterBlue",
				"RainbowDelimiterOrange",
				"RainbowDelimiterGreen",
				"RainbowDelimiterViolet",
				"RainbowDelimiterCyan",
			},
			show_start = false,
			show_end = false,
		},
		exclude = {
			filetypes = {
				"Trouble",
				"alpha",
				"dashboard",
				"help",
				"lazy",
				"mason",
				"neo-tree",
				"notify",
				"snacks_dashboard",
				"snacks_notif",
				"snacks_terminal",
				"snacks_win",
				"toggleterm",
				"trouble",
			},
		},
	},
	config = function(_, opts)
		vim.g.rainbow_delimiters = { highlight = opts.scope.highlight }
		require("ibl").setup(opts)
	end,
}
