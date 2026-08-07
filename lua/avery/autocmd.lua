-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		(vim.hl or vim.highlight).on_yank()
	end,
})
