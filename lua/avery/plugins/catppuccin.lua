-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("catppuccin-nvim")
	end,
	opts = {
		custom_highlights = function(colors)
			return {
				FloatBorder = { fg = colors.pink },
				BlinkCmpMenuBorder = { fg = colors.pink },
				RainbowDelimiterRed = { fg = colors.red },
				RainbowDelimiterYellow = { fg = colors.yellow },
				RainbowDelimiterBlue = { fg = colors.blue },
				RainbowDelimiterOrange = { fg = colors.peach },
				RainbowDelimiterGreen = { fg = colors.green },
				RainbowDelimiterViolet = { fg = colors.mauve },
				RainbowDelimiterCyan = { fg = colors.sky },
				DashboardHeader = { fg = colors.red },
				SkActive = { bg = colors.pink, fg = colors.mantle },
			}
		end,
		integrations = {
			fidget = true,
			mason = true,
			which_key = true,
			indent_blankline = {
				colored_indent_levels = true,
			},
		},
	},
}
