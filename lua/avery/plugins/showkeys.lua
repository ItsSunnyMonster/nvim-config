-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

return {
	"nvzone/showkeys",
	cmd = "ShowkeysToggle",
	keys = {
		{ "<leader>sk", "<cmd>ShowkeysToggle<cr>", desc = "Showkeys Toggle" },
	},
	opts = {
		position = "top-right",
		maxkeys = 10,
		excluded_modes = { "i" },
	},
}
