-- SPDX-FileCopyrightText: 2025 SunnyMonster
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin/nvim",
	},
	config = function()
		require("bufferline").setup({
			highlights = require("catppuccin.special.bufferline").get_theme(),
		})
	end,
}
