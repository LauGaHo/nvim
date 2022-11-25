local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

telescope.setup({
	defaults = {
		-- 打开窗口后进入的初始模式，默认为 insert，也可以是 normal
		initial_mode = "insert",
		-- 窗口内的快捷键
		mappings = require("liujiahao.core.keymaps").telescopeList,
	},
})

telescope.load_extension("fzf")
