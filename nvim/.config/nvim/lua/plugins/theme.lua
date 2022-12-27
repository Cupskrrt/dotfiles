local M = {
	"Mofiqul/dracula.nvim",
	event = "VimEnter",
}

function M.config()
	local dracula = require("dracula")
	dracula.setup({
		transparent_bg = true,
		italic_comment = true,
	})
	vim.cmd([[colorscheme dracula]])
end

return M
