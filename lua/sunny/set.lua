vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.scrolloff = 8

vim.opt.wrap = false

vim.opt.signcolumn = "yes"

vim.lsp.inlay_hint.enable(true)

local signs = {
	ERROR = " ",
	WARN = " ",
	HINT = "",
	INFO = " ",
}

vim.diagnostic.config({
	virtual_text = {
		prefix = "",
	},
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = signs.ERROR,
			[vim.diagnostic.severity.WARN] = signs.WARN,
			[vim.diagnostic.severity.HINT] = signs.HINT,
			[vim.diagnostic.severity.INFO] = signs.INFO,
		},
		-- linehl = {
		-- 	[vim.diagnostic.severity.ERROR] = "ErrorMsg",
		-- },
		numhl = {
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

-- local function initial_caps(word)
-- 	word = word:lower()
-- 	return word:sub(1, 1):upper() .. word:sub(2)
-- end
--
-- for type, icon in pairs(signs) do
-- 	local hl = "DiagnosticSign" .. initial_caps(type)
-- 	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
-- end
