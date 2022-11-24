-- Packer 插件管理
require("liujiahao.plugins-setup")
-- Vim 基础配置
require("liujiahao.core.options")
-- Vim 键位映射
require("liujiahao.core.keymaps")
-- 主题设置
require("liujiahao.core.colorscheme")

-- 各插件配置
require("liujiahao.plugins.comment")
require("liujiahao.plugins.nvim-tree")
require("liujiahao.plugins.lualine")
require("liujiahao.plugins.telescope")
require("liujiahao.plugins.nvim-cmp")
require("liujiahao.plugins.lsp.mason")
require("liujiahao.plugins.lsp.lspsaga")
require("liujiahao.plugins.lsp.lspconfig")
require("liujiahao.plugins.lsp.null-ls")
require("liujiahao.plugins.autopairs")
require("liujiahao.plugins.treesitter")
require("liujiahao.plugins.gitsigns")
require("liujiahao.plugins.bufferline")
