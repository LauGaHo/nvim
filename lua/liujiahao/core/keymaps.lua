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

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

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
