local opt = vim.opt -- for conciseness

-- 使用相对行号
opt.relativenumber = true
opt.number = true

-- jkhl 移动光标时周围保留 8 行
opt.scrolloff = 8
opt.sidescrolloff = 8

-- 缩进 2 个空格等于一个 Tab
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftround = true

-- >> << 时移动的长度
opt.shiftwidth = 2

-- 空格替代 Tab
opt.expandtab = true

-- 新行对齐当前行
opt.autoindent = true
opt.smartindent = true

-- 禁止折行
opt.wrap = true

-- 搜索大小写不敏感，除非包含大小写
opt.ignorecase = true
opt.smartcase = true

-- 高亮所在行
opt.cursorline = true

-- 右侧参考线
opt.colorcolumn = "80"

-- 当文件被外部程序修改时，自动加载
opt.autoread = true

-- 样式
opt.termguicolors = true
opt.background = "dark"

-- 显示左侧图标指示列
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split window 从下边和右边出现
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
