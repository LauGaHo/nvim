local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		numbers = "buffer_id",
		separator_style = "slant",
	},
})
