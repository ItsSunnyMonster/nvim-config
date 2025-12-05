return {
	{
		"nvimdev/dashboard-nvim",
		dependencies = { "rubiin/fortune.nvim" },
		opts = function()
			local logo = [[
 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
                                ░                  

~~ Hi SunnyMonster ૮˶ᵔᵕᵔ˶ა ~~
      ]]

			local fortune = table.concat(require("fortune").get_fortune(), "\n")

			logo = string.rep("\n", 8) .. logo .. "\n" .. fortune .. "\n\n"

			local opts = {
				theme = "doom",
				config = {},
			}

			opts.config.header = vim.split(logo, "\n")
			opts.config.center = {
				{
					action = "Oil",
					desc = " Open Oil",
					icon = " ",
					key = "-",
				},
				{
					action = "Telescope find_files",
					desc = " Find File",
					icon = "󰍉 ",
					key = "f",
				},
				{
					action = "ene | startinsert",
					desc = " New File",
					icon = " ",
					key = "n",
				},
				{
					action = "Telescope oldfiles",
					desc = " Recent Files",
					icon = " ",
					key = "r",
				},
				{
					action = "Telescope live_grep",
					desc = " Find Text",
					icon = " ",
					key = "g",
				},
				{
					action = "Oil " .. vim.fn.stdpath("config"),
					desc = " Telescope config files",
					icon = " ",
					key = "c",
				},
				-- { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = "󰜉 ", key = "s" },
				{
					action = "Lazy",
					desc = " Lazy",
					icon = "󰒲 ",
					key = "l",
				},
				{
					action = "qa",
					desc = " Quit",
					icon = " ",
					key = "q",
				},
			}

			opts.config.footer = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)

				local footer = "\n⚡ Neovim loaded "
					.. stats.loaded
					.. "/"
					.. stats.count
					.. " plugins in "
					.. ms
					.. "ms"

				return vim.split(footer, "\n")
			end

			for _, button in ipairs(opts.config.center) do
				button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
				button.key_format = "  %s"
			end

			-- open dashboard after closing lazy
			if vim.o.filetype == "lazy" then
				vim.api.nvim_create_autocmd("WinClosed", {
					pattern = tostring(vim.api.nvim_get_current_win()),
					once = true,
					callback = function()
						vim.schedule(function()
							vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
						end)
					end,
				})
			end

			return opts
		end,
	},
}
