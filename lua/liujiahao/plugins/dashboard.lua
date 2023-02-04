local db = function()
	local staus, db = pcall(require, "dashboard")
	if not staus then
		return
	end

	db.setup({
		theme = "doom",
		config = {
			-- your header
			header = {
				[[]],
				[[]],
				[[]],
				[[██╗      █████╗ ██╗   ██╗      ██╗   ██╗██╗███╗   ███╗]],
				[[██║     ██╔══██╗██║   ██║      ██║   ██║██║████╗ ████║]],
				[[██║     ███████║██║   ██║█████╗██║   ██║██║██╔████╔██║]],
				[[██║     ██╔══██║██║   ██║╚════╝╚██╗ ██╔╝██║██║╚██╔╝██║]],
				[[███████╗██║  ██║╚██████╔╝       ╚████╔╝ ██║██║ ╚═╝ ██║]],
				[[╚══════╝╚═╝  ╚═╝ ╚═════╝         ╚═══╝  ╚═╝╚═╝     ╚═╝]],
				[[]],
				[[]],
				[[]],
			},
			center = {
				{
					icon = "  ",
					desc = "Projects                            ",
					action = "Telescope projects",
				},
				{
					icon = "  ",
					desc = "Recently files                      ",
					action = "Telescope oldfiles",
				},
				{
					icon = "  ",
					desc = "Edit keybindings                    ",
					action = "edit ~/.config/nvim/lua/liujiahao/core/keymaps.lua",
				},
				{
					icon = "  ",
					desc = "Edit Projects                       ",
					action = "edit ~/.local/share/nvim/project_nvim/project_history",
				},
			},
			-- your footer
			footer = {
				"",
				"",
				"https://github.com/LauGaHo/nvim",
			},
		},
	})
end

return db
