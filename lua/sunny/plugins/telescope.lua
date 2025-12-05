return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.2.0",
	dependencies = { "nvim-lua/plenary.nvim", "folke/which-key.nvim" },
	init = function()
		require("which-key").add({ { "<leader>f", group = "Telescope find" } })
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
