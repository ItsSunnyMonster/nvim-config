return {
	"vyfor/cord.nvim",
	build = ":Cord update",
	opts = {
		display = {
			theme = "catppuccin",
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
