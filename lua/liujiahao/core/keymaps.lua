-- 全局快捷键
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sj", ":vertical resize -20<CR>") -- window width -20
keymap.set("n", "<leader>sk", ":vertical resize +20<CR>") -- window width +20
keymap.set("n", "<leader>si", ":resize +5<CR>") -- window height +20
keymap.set("n", "<leader>sm", ":resize -5<CR>") -- window height -20

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>mw", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>ft", ":NvimTreeFindFile<CR>")
keymap.set("n", "<leader>ct", ":NvimTreeCollapse<CR>")

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

-- lazygit
keymap.set("n", "<leader>gg", ":LazyGit<CR>") -- open the lazygit

-- vim-table-mode
keymap.set("n", "<leader>tme", ":TableModeEnable<CR>") -- enable table mode
keymap.set("n", "<leader>tmd", ":TableModeDisable<CR>") -- disable table mode

-- markdown preview
keymap.set("n", "<leader>mdp", ":MarkdownPreview<CR>") -- open markdown preview
keymap.set("n", "<leader>mdps", ":MarkdownPreviewStop<CR>") -- close markdown preview

-- bufferline
keymap.set("n", "<C-;>", ":BufferLineCyclePrev<CR>") -- Move to previous
keymap.set("n", "<C-'>", ":BufferLineCycleNext<CR>") -- Move to next
keymap.set("n", "<C-<>", ":BufferLineMovePrev<CR>") -- Re-order to previous
keymap.set("n", "<C->>", ":BufferLineMoveNext<CR>") -- Re-order to next
keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>") -- Goto buffer in position
keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>") -- Goto buffer in position
keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>") -- Goto buffer in position
keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>") -- Goto buffer in position
keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>") -- Goto buffer in position
keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>") -- Goto buffer in position
keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>") -- Goto buffer in position
keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>") -- Goto buffer in position
keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>") -- Goto buffer in position
keymap.set("n", "<leader>0", ":BufferLineGoToBuffer 0<CR>") -- Goto buffer in position
keymap.set("n", "<leader>bp", ":BufferLinePick<CR>") -- Pick a tab
keymap.set("n", "<leader>pd", ":BufferLinePickClose<CR>") -- Pick a tab to delete
keymap.set("n", "<leader>bd", ":bd<CR>") -- Delete a tab
keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>") -- Close all tab on the left of the current tab
keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>") -- Close all tab on the right of the current tab

-- 导出各插件内的快捷键
local pluginKeys = {}

-- nvim-tree
pluginKeys.nvimTreeList = {
	-- 打开文件或文件夹
	{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
	-- 分屏打开文件
	{ key = "v", action = "vsplit" }, -- 垂直分屏
	{ key = "h", action = "split" }, -- 水平分屏
	-- 显示隐藏文件
	{ key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
	{ key = ".", action = "toggle_dotfiles" }, -- 对应 filters 中的隐藏文件 (.file)
	-- 文件操作
	{ key = "<F5>", action = "refresh" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "r", action = "rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
}

-- telescope
pluginKeys.telescopeList = {
	i = {
		-- 上下移动
		["<C-j>"] = "move_selection_next",
		["<C-k>"] = "move_selection_previous",
		["<Down>"] = "move_selection_next",
		["<Up>"] = "move_selection_previous",
		-- 历史记录
		["<C-n>"] = "cycle_history_next",
		["<C-p>"] = "cycle_history_prev",
		-- 关闭窗口
		["<C-c>"] = "close",
		-- 预览窗口上下滚动
		["<C-u>"] = "preview_scrolling_up",
		["<C-d>"] = "preview_scrolling_down",
	},
}

-- treesitter
pluginKeys.treesitterList = {
	init_selection = "<CR>",
	node_incremental = "<CR>",
	node_decremental = "<BS>",
	scope_incremental = "<TAB>",
}

-- lspconfig
pluginKeys.lspconfigList = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- set keybinds
	keymap.set("n", "gf", ":Lspsaga lsp_finder<CR>", opts) -- show definition, references
	keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	keymap.set("n", "gd", ":Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts) -- smart rename
	keymap.set("n", "<leader>d", ":Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", ":Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	keymap.set("n", "<leader>o", ":LSoutlineToggle<CR>", opts) -- see outline on right hand side

	-- typescript specific keymaps (e.g. rename file and update imports)
	if client.name == "tsserver" then
		keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports
	end
end

-- nvim-cmp
pluginKeys.cmp = function(cmp)
	return {
		-- 出现补全
		["<C-s>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		-- 取消补全弹框
		["<C-c>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- 上一个
		["<C-k>"] = cmp.mapping.select_prev_item(),
		-- 下一个
		["<C-j>"] = cmp.mapping.select_next_item(),
		-- 确认
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		-- 滚动文档窗口
		["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		-- 滚动文档窗口
		["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
	}
end

-- 返回 pluginKeys
return pluginKeys
