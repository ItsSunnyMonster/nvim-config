-- SPDX-FileCopyrightText: 2025 SunnyMonster
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

local treesitterLanguages = {
	"rust",
	"c",
	"markdown",
	"markdown_inline",
	"javascript",
	"jsx",
	"typescript",
	"tsx",
	"html",
	"css",
	"scss",
	"lua",
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function(_, _)
		require("nvim-treesitter").install(treesitterLanguages)
	end,
	init = function(_)
		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("EnableTreesitterHighlighting", { clear = true }),
			desc = "Try to enable tree-sitter syntax highlighting",
			pattern = "*", -- run on *all* filetypes
			callback = function()
				pcall(function()
					vim.treesitter.start()
				end)
			end,
		})
	end,
}
