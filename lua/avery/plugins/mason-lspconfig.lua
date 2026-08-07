-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		automatic_enable = {
			exclude = {
				"rust_analyzer", -- We have rustaceanvim for this
			},
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
