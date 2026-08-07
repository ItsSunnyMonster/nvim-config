-- SPDX-FileCopyrightText: 2025 SunnyMonster
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

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
