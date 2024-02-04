local function setup_treesitter()
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
			"markdown_inline",
			"svelte",
			"graphql",
			"bash",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"rust",
		},
		-- auto install above language parsers
		-- auto_install mean that when you open a file which is not in ensure_installed, it will auto install the language parsers
		auto_install = true,
		textobjects = {
			select = {
				enable = true,

				-- Automatically jump forward to textobj, similar to targets.vim
				lookahead = true,

				keymaps = {
					-- You can use the capture groups defined in textobjects.scm
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					-- You can optionally set descriptions to the mappings (used in the desc parameter of
					-- nvim_buf_set_keymap) which plugins like which-key display
					["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
					-- You can also use captures from other query groups like `locals.scm`
					["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
				},
				-- You can choose the select mode (default is charwise 'v')
				--
				-- Can also be a function which gets passed a table with the keys
				-- * query_string: eg '@function.inner'
				-- * method: eg 'v' or 'o'
				-- and should return the mode ('v', 'V', or '<c-v>') or a table
				-- mapping query_strings to modes.
				selection_modes = {
					["@parameter.outer"] = "v", -- charwise
					["@function.outer"] = "V", -- linewise
					["@class.outer"] = "<c-v>", -- blockwise
				},
				-- If you set this to `true` (default is `false`) then any textobject is
				-- extended to include preceding or succeeding whitespace. Succeeding
				-- whitespace has priority in order to act similarly to eg the built-in
				-- `ap`.
				--
				-- Can also be a function which gets passed a table with the keys
				-- * query_string: eg '@function.inner'
				-- * selection_mode: eg 'v'
				-- and should return true of false
				include_surrounding_whitespace = true,
			},
		},
	})
end

return setup_treesitter
