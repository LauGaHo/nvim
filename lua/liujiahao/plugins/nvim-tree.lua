local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- 加载 keymaps.lua 文件中的导出插件快捷键
local on_attach = require("liujiahao.core.keymaps").nvimTreeList

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	on_attach = on_attach,
	-- project plugin 需要这样设置
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	-- 隐藏 . 文件和 node_modules 文件夹
	filters = {
		dotfiles = true,
		custom = { "node_modules" },
	},
	view = {
		-- 显示行号
		number = true,
		-- 显示相对行号
		relativenumber = true,
		signcolumn = "yes",
		-- 自定义列表中快捷键
		mappings = {
			custom_only = false,
			-- list = list_keys,
		},
	},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "→", -- arrow when folder is closed
					arrow_open = "↓", -- arrow when folder is open
				},
			},
		},
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
