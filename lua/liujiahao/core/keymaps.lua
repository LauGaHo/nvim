-- 全局快捷键
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- keymap.set("i", "jk", "<ESC>")

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

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

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
keymap.set("n", "<leader>j", ":BufferLineCyclePrev<CR>") -- Move to previous
keymap.set("n", "<leader>k", ":BufferLineCycleNext<CR>") -- Move to next
keymap.set("n", "<leader>h", ":BufferLineMovePrev<CR>") -- Re-order to previous
keymap.set("n", "<leader>l", ":BufferLineMoveNext<CR>") -- Re-order to next
keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>") -- Goto buffer in position
keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>") -- Goto buffer in position
keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>") -- Goto buffer in position
keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>") -- Goto buffer in position
keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>") -- Goto buffer in position
-- keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>") -- Goto buffer in position
-- keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>") -- Goto buffer in position
-- keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>") -- Goto buffer in position
-- keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>") -- Goto buffer in position
-- keymap.set("n", "<leader>0", ":BufferLineGoToBuffer 0<CR>") -- Goto buffer in position
keymap.set("n", "<leader>bp", ":BufferLinePick<CR>") -- Pick a tab
keymap.set("n", "<leader>pd", ":BufferLinePickClose<CR>") -- Pick a tab to delete
keymap.set("n", "<leader>bd", ":bd<CR>") -- Delete a tab
keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>") -- Close all tab on the left of the current tab
keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>") -- Close all tab on the right of the current tab

-- Leap.nvim
keymap.set("n", "r", "<Plug>(leap-forward-to)") -- Leap.nvim find forward
keymap.set("n", "R", "<Plug>(leap-backward-to)") -- Leap.nvim find backward

-- 导出各插件内的快捷键
local pluginKeys = {}

-- nvim-tree

pluginKeys.nvimTreeList = function(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- Default mappings. Feel free to modify or remove as you wish.
	--
	-- BEGIN_DEFAULT_ON_ATTACH
	vim.keymap.set("n", "<C-]>", api.tree.change_root_to_node, opts("CD"))
	vim.keymap.set("n", "<C-e>", api.node.open.replace_tree_buffer, opts("Open: In Place"))
	vim.keymap.set("n", "<C-k>", api.node.show_info_popup, opts("Info"))
	vim.keymap.set("n", "<C-r>", api.fs.rename_sub, opts("Rename: Omit Filename"))
	vim.keymap.set("n", "<C-t>", api.node.open.tab, opts("Open: New Tab"))
	vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "<C-x>", api.node.open.horizontal, opts("Open: Horizontal Split"))
	vim.keymap.set("n", "<BS>", api.node.navigate.parent_close, opts("Close Directory"))
	vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<Tab>", api.node.open.preview, opts("Open Preview"))
	vim.keymap.set("n", ">", api.node.navigate.sibling.next, opts("Next Sibling"))
	vim.keymap.set("n", "<", api.node.navigate.sibling.prev, opts("Previous Sibling"))
	vim.keymap.set("n", ".", api.node.run.cmd, opts("Run Command"))
	vim.keymap.set("n", "-", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "a", api.fs.create, opts("Create"))
	vim.keymap.set("n", "bd", api.marks.bulk.delete, opts("Delete Bookmarked"))
	vim.keymap.set("n", "bmv", api.marks.bulk.move, opts("Move Bookmarked"))
	vim.keymap.set("n", "B", api.tree.toggle_no_buffer_filter, opts("Toggle Filter: No Buffer"))
	vim.keymap.set("n", "c", api.fs.copy.node, opts("Copy"))
	vim.keymap.set("n", "C", api.tree.toggle_git_clean_filter, opts("Toggle Filter: Git Clean"))
	vim.keymap.set("n", "[c", api.node.navigate.git.prev, opts("Prev Git"))
	vim.keymap.set("n", "]c", api.node.navigate.git.next, opts("Next Git"))
	vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
	vim.keymap.set("n", "D", api.fs.trash, opts("Trash"))
	vim.keymap.set("n", "E", api.tree.expand_all, opts("Expand All"))
	vim.keymap.set("n", "e", api.fs.rename_basename, opts("Rename: Basename"))
	vim.keymap.set("n", "]e", api.node.navigate.diagnostics.next, opts("Next Diagnostic"))
	vim.keymap.set("n", "[e", api.node.navigate.diagnostics.prev, opts("Prev Diagnostic"))
	vim.keymap.set("n", "F", api.live_filter.clear, opts("Clean Filter"))
	vim.keymap.set("n", "f", api.live_filter.start, opts("Filter"))
	vim.keymap.set("n", "g?", api.tree.toggle_help, opts("Help"))
	vim.keymap.set("n", "gy", api.fs.copy.absolute_path, opts("Copy Absolute Path"))
	vim.keymap.set("n", "H", api.tree.toggle_hidden_filter, opts("Toggle Filter: Dotfiles"))
	vim.keymap.set("n", "I", api.tree.toggle_gitignore_filter, opts("Toggle Filter: Git Ignore"))
	vim.keymap.set("n", "J", api.node.navigate.sibling.last, opts("Last Sibling"))
	vim.keymap.set("n", "K", api.node.navigate.sibling.first, opts("First Sibling"))
	vim.keymap.set("n", "m", api.marks.toggle, opts("Toggle Bookmark"))
	vim.keymap.set("n", "o", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "O", api.node.open.no_window_picker, opts("Open: No Window Picker"))
	vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
	vim.keymap.set("n", "P", api.node.navigate.parent, opts("Parent Directory"))
	vim.keymap.set("n", "q", api.tree.close, opts("Close"))
	vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
	vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
	vim.keymap.set("n", "s", api.node.run.system, opts("Run System"))
	vim.keymap.set("n", "S", api.tree.search_node, opts("Search"))
	vim.keymap.set("n", "U", api.tree.toggle_custom_filter, opts("Toggle Filter: Hidden"))
	vim.keymap.set("n", "W", api.tree.collapse_all, opts("Collapse"))
	vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
	vim.keymap.set("n", "y", api.fs.copy.filename, opts("Copy Name"))
	vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts("Copy Relative Path"))
	vim.keymap.set("n", "<2-LeftMouse>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<2-RightMouse>", api.tree.change_root_to_node, opts("CD"))
	-- END_DEFAULT_ON_ATTACH

	-- Mappings migrated from view.mappings.list
	--
	-- You will need to insert "your code goes here" for any mappings with a custom action_cb
	vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "o", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "<2-LeftMouse>", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "h", api.node.open.horizontal, opts("Open: Horizontal Split"))
	vim.keymap.set("n", "i", api.tree.toggle_custom_filter, opts("Toggle Hidden"))
	vim.keymap.set("n", ".", api.tree.toggle_hidden_filter, opts("Toggle Dotfiles"))
	vim.keymap.set("n", "<F5>", api.tree.reload, opts("Refresh"))
	vim.keymap.set("n", "a", api.fs.create, opts("Create"))
	vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
	vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
	vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
	vim.keymap.set("n", "c", api.fs.copy.node, opts("Copy"))
	vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
end

-- pluginKeys.nvimTreeList = {
-- 	-- 打开文件或文件夹
-- 	{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
-- 	-- 分屏打开文件
-- 	{ key = "v", action = "vsplit" }, -- 垂直分屏
-- 	{ key = "h", action = "split" }, -- 水平分屏
-- 	-- 显示隐藏文件
-- 	{ key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
-- 	{ key = ".", action = "toggle_dotfiles" }, -- 对应 filters 中的隐藏文件 (.file)
-- 	-- 文件操作
-- 	{ key = "<F5>", action = "refresh" },
-- 	{ key = "a", action = "create" },
-- 	{ key = "d", action = "remove" },
-- 	{ key = "r", action = "rename" },
-- 	{ key = "x", action = "cut" },
-- 	{ key = "c", action = "copy" },
-- 	{ key = "p", action = "paste" },
-- }

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
	keymap.set("n", "gf", ":Lspsaga finder<CR>", opts) -- show definition, references
	keymap.set("n", "gd", ":Lspsaga goto_definition<CR>", opts) -- got to declaration
	keymap.set("n", "pd", ":Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	-- keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts) -- smart rename
	keymap.set("n", "<leader>d", ":Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", ":Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	keymap.set("n", "<leader>o", ":Lspsaga outline<CR>", opts) -- see outline on right hand side

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

-- Lspsaga
pluginKeys.lspsaga = {
	finder_action_keys = {
		open = { "o", "<CR>" },
		vsplit = "s",
		split = "i",
		tabe = "t",
		quit = { "q", "<ESC>" },
	},
	code_action_keys = {
		quit = "q",
		exec = "<CR>",
	},
	definition_action_keys = {
		edit = "<C-c>o",
		vsplit = "<C-c>v",
		split = "<C-c>i",
		tabe = "<C-c>t",
		quit = "q",
	},
	rename_action_quit = "<C-c>",
}

-- 返回 pluginKeys
return pluginKeys
