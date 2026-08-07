-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

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
	"astro",
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function(_, _)
		local installed = require("nvim-treesitter.config").get_installed()
		local toInstall = vim.tbl_filter(function(lang)
			return not vim.tbl_contains(installed, lang)
		end, treesitterLanguages)
		require("nvim-treesitter").install(toInstall)
	end,
	init = function(_)
		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("EnableTreesitterHighlighting", { clear = true }),
			desc = "Try to enable tree-sitter syntax highlighting",
			pattern = "*", -- run on *all* filetypes
			callback = function()
				pcall(function()
					vim.treesitter.start()
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end)
			end,
		})
	end,
}
