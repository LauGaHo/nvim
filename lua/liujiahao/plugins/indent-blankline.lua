-- local status, ident_blankline = pcall(require, "indent_blankline")
-- if not status then
-- 	return
-- end
--
-- ident_blankline.setup({
-- 	-- 空行占位
-- 	space_char_blankline = " ",
-- 	-- 用 treesitter 判断上下文
-- 	show_current_context = true,
-- 	show_current_context_start = true,
-- 	context_patterns = {
-- 		"class",
-- 		"function",
-- 		"method",
-- 		"element",
-- 		"^if",
-- 		"^while",
-- 		"^for",
-- 		"^object",
-- 		"^table",
-- 		"block",
-- 		"arguments",
-- 	},
-- 	-- :echo &filetype
-- 	filetype_exclude = {
-- 		"dashboard",
-- 		"packer",
-- 		"terminal",
-- 		"help",
-- 		"log",
-- 		"markdown",
-- 		"TelescopePrompt",
-- 		"lsp-installer",
-- 		"lspinfo",
-- 		"toggleterm",
-- 	},
-- 	-- 竖线样式
-- 	-- char = '¦'
-- 	-- char = '┆'
-- 	-- char = '│'
-- 	-- char = "⎸",
-- 	char = "▏",
-- })

-- local highlight = {
-- 	"RainbowRed",
-- 	"RainbowYellow",
-- 	"RainbowBlue",
-- 	"RainbowOrange",
-- 	"RainbowGreen",
-- 	"RainbowViolet",
-- 	"RainbowCyan",
-- }
--
-- local hooks = require("ibl.hooks")
-- -- create the highlight groups in the highlight setup hook, so they are reset
-- -- every time the colorscheme changes
-- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
-- 	vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
-- 	vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
-- 	vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
-- 	vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
-- 	vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
-- 	vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
-- 	vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
-- end)
--
-- require("ibl").setup({ indent = { highlight = highlight } })

require("ibl").setup({
	indent = {
		char = "|",
	},
	scope = {
		enabled = true,
	},
	exclude = {
		filetypes = { "help", "alpha", "dashboard", "Trouble", "lazy", "neo-tree" },
	},
	whitespace = {
		remove_blankline_trail = true,
	},
})
