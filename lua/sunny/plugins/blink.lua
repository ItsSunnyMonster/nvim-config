return {
	"saghen/blink.cmp",
	version = "1.*",
	---@module 'blinkcmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "enter" },
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = {
				auto_show = true,
				window = {
					border = "rounded",
				},
			},
			menu = {
				border = "rounded",
			},
		},
		sources = {
			default = { "lazydev", "lsp", "path", "snippets" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},
	},
	opts_extend = { "sources.default" },
}
