return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
	opts = {
		custom_highlights = function(colors)
			return {
				FloatBorder = { fg = colors.pink },
				BlinkCmpMenuBorder = { fg = colors.pink },
				RainbowRed = { fg = colors.red },
				RainbowYellow = { fg = colors.yellow },
				RainbowBlue = { fg = colors.blue },
				RainbowOrange = { fg = colors.peach },
				RainbowGreen = { fg = colors.green },
				RainbowViolet = { fg = colors.mauve },
				RainbowCyan = { fg = colors.sky },
				DashboardHeader = { fg = colors.red },
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
