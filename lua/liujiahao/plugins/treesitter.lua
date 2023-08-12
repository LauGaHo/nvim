-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
		-- 启用了 treesitter 语法高亮，则禁用 vim 的正则语法高亮
		additional_vim_regex_highlighting = false,
	},
	-- 启用增量选择模块
	incremental_selection = {
		enable = true,
		keymaps = require("liujiahao.core.keymaps").treesitterList,
	},
	-- enable indentation
	indent = { enable = true }, -- 按 = 号自动缩进
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- auto install above language parsers
	-- auto_install = false,
})
