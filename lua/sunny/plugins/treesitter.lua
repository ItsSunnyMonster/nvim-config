-- SPDX-FileCopyrightText: 2025 SunnyMonster
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "lua", "rust", "zig", "c", "cpp", "markdown", "markdown_inline" },
		highlight = {
			enable = true,
			-- disable = function(_, buf)
			-- 	local max_filesize = 100 * 1024 -- 100 KB
			-- 	local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			-- 	if ok and stats and stats.size > max_filesize then
			-- 		return true
			-- 	end
			-- end,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
