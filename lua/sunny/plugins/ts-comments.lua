-- SPDX-FileCopyrightText: 2025 SunnyMonster
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

return {
	"folke/ts-comments.nvim",
	opts = {},
	event = "VeryLazy",
	enabled = vim.fn.has("nvim-0.10.0") == 1,
}
