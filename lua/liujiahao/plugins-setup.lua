local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- preferred colorscheme
	use("bluz71/vim-nightfly-guicolors")

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	-- maximizes and restores current window
	use("szw/vim-maximizer")

	-- essential plugins
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")
	use("arkav/lualine-lsp-progress") -- bufferline 加载进度条

	-- fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dep
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- 补全引擎
	use("hrsh7th/cmp-buffer") -- buffer 补全源
	use("hrsh7th/cmp-path") -- 路径补全源

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets") -- 包含大部分常用语言的代码段

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp") -- Neovim 内置 LSP 提供的补全内容
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			-- 每次更新 treesitter 都会更新 Language Server (这个命令时后面加上去的，报错请注意！)
			vim.cmd([[TSUpdate]])
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- about git
	use("lewis6991/gitsigns.nvim") -- git signs plugins
	use("kdheepak/lazygit.nvim") -- git GUI
	use("tpope/vim-fugitive") -- git blame

	-- about markdown
	-- markdown-preview installed without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("dhruvasagar/vim-table-mode") -- markdown table format util

	-- about tab
	use("akinsho/bufferline.nvim") -- bufferline

	-- about start page
	use("glepnir/dashboard-nvim") -- dashboard-nvim

	-- project
	use("ahmedkhalf/project.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
