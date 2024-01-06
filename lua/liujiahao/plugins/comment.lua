local function setup_comment()
	local setup, comment = pcall(require, "Comment")
	if not setup then
		return
	end

	comment.setup()
end

return setup_comment
