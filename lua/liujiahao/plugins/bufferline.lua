local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		numbers = "buffer_id",
		separator_style = "slant",
		-- 侧边栏配置
		-- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
		-- 使用 nvim 内置 LSP
		diagnostic = "nvim_lsp",
		-- 未知有什么用
		-- 显示 LSP 报错图标
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or "")
				s = s .. n .. sym
			end
			return s
		end,
	},
})
