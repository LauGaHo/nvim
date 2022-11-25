local staus, db = pcall(require, "dashboard")
if not staus then
	return
end

db.custom_header = {
	[[]],
	[[██╗      █████╗ ██╗   ██╗      ██╗   ██╗██╗███╗   ███╗]],
	[[██║     ██╔══██╗██║   ██║      ██║   ██║██║████╗ ████║]],
	[[██║     ███████║██║   ██║█████╗██║   ██║██║██╔████╔██║]],
	[[██║     ██╔══██║██║   ██║╚════╝╚██╗ ██╔╝██║██║╚██╔╝██║]],
	[[███████╗██║  ██║╚██████╔╝       ╚████╔╝ ██║██║ ╚═╝ ██║]],
	[[╚══════╝╚═╝  ╚═╝ ╚═════╝         ╚═══╝  ╚═╝╚═╝     ╚═╝]],
	[[]],
	[[]],
}

db.custom_center = {
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
}

db.custom_footer = {
	"",
	"",
	"https://github.com/LauGaHo/nvim",
}
