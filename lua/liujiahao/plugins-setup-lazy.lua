local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- lua function that many plugins use
	"nvim-lua/plenary.nvim",

	-- preferred colorscheme
	"bluz71/vim-nightfly-guicolors",

	-- tmux & split window navigation
	"christoomey/vim-tmux-navigator",

	-- maximizes and restores current window
	"szw/vim-maximizer",

	-- essential plugins
	"tpope/vim-surround",
	"vim-scripts/ReplaceWithRegister",

	-- commenting with gc
	"numToStr/Comment.nvim",

	-- file explorer
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},

	-- icons
	"nvim-tree/nvim-web-devicons",

	-- statusline
	"nvim-lualine/lualine.nvim",
	"arkav/lualine-lsp-progress",

	-- fuzzy finding
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- dep
	{ "nvim-telescope/telescope.nvim", tag = "0.1.1" },

	-- autocompletion
	{
		"hrsh7th/nvim-cmp", -- 補全引擎
		event = { "BufReadPost", "BufNewFile" },
	},
	"hrsh7th/cmp-buffer", -- buffer 補全源
	"hrsh7th/cmp-path", -- 路徑補全源

	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets", -- 包含大部分常用語言的代碼段

	-- managing & installing lsp server, linter & formatters
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- configuring lsp server
	{
		"neovim/nvim-lspconfig",
		cmd = { "Mason" },
		event = { "BufReadPost", "BufNewFile" },
	},
	"hrsh7th/cmp-nvim-lsp", -- Neovim 內置 LSP 提供的補全內容
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({})
		end,
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	},
	"jose-elias-alvarez/typescript.nvim",
	"onsails/lspkind.nvim",

	-- formatting & linting
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPost", "BufNewFile" },
	},
	"jayp0521/mason-null-ls.nvim",

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		event = "VeryLazy",
	},

	-- auto closing
	{
		"windwp/nvim-autopairs",
		event = "VeryLazy",
	},
	"windwp/nvim-ts-autotag",

	-- about git
	{
		"lewis6991/gitsigns.nvim", -- git signs plugins
		event = "VeryLazy",
	},
	"kdheepak/lazygit.nvim", -- git GUI
	"tpope/vim-fugitive", -- git blame

	-- about markdown
	-- markdown-preview installed without yarn or npm
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	"dhruvasagar/vim-table-mode", -- markdown table format util

	-- about tab
	"akinsho/bufferline.nvim", -- bufferline
	{
		"akinsho/bufferline.nvim", -- bufferline
		event = "VeryLazy",
	},

	-- about start page
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			local db = require("liujiahao.plugins.dashboard")
			db()
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},

	-- project
	"ahmedkhalf/project.nvim",

	-- indent-blankline
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		event = "VeryLazy",
	},

	-- cursor move plugin
	"ggandor/leap.nvim",

	-- jsdoc plugin
	{
		"kkoomen/vim-doge",
		build = ":call doge#install()",
	},

	-- todo-comment plugin
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		-- leave it empty to use the default setttings
		opts = {},
	},
}

local opts = {} -- 注意要定義這個變量

require("lazy").setup(plugins, opts)
