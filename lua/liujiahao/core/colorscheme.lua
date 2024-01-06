local function setup_colorscheme()
	local status, _ = pcall(vim.cmd, "colorscheme nightfly")
	if not status then
		print("Colorscheme not found!")
		return
	end
end

return setup_colorscheme
