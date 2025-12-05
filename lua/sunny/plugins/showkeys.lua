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
