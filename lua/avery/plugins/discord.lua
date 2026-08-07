-- SPDX-FileCopyrightText: 2025, 2026 SunnyMonster
--
-- SPDX-License-Identifier: MIT

return {
	"vyfor/cord.nvim",
	build = ":Cord update",
	opts = {
		display = {
			theme = "minecraft",
		},
		buttons = {
			{
				label = function(opts)
					return opts.repo_url and "View Repository" or "Website"
				end,
				url = function(opts)
					return opts.repo_url or "https://www.sunnymonster.dev"
				end,
			},
		},
	},
}
