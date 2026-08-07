-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		lazygit = {
			-- your lazygit configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	keys = {
		{
			"<leader>g",
			function()
				Snacks.lazygit()
			end,
			desc = "Open lazygit",
		},
	},
}
