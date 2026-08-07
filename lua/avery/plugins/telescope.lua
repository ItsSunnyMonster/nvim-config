-- SPDX-FileCopyrightText: 2025 SunnyMonster
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "folke/which-key.nvim", "nvim-telescope/telescope-fzf-native.nvim" },
	init = function()
		require("which-key").add({ { "<leader>f", group = "Telescope find" } })
		require("telescope").load_extension("fzf")
	end,
	keys = {
		{
			"<leader>ff",
			function()
				local builtin = require("telescope.builtin")
				builtin.find_files()
			end,
			desc = "Telescope find files",
		},
		{
			"<leader>fg",
			function()
				local builtin = require("telescope.builtin")
				builtin.live_grep()
			end,
			desc = "Telescope live grep",
		},
		{
			"<leader>fb",
			function()
				local builtin = require("telescope.builtin")
				builtin.buffers()
			end,
			desc = "Telescope buffers",
		},
		{
			"<leader>fh",
			function()
				local builtin = require("telescope.builtin")
				builtin.help_tags()
			end,
			desc = "Telescope help tags",
		},
	},
}
