local M = {
	"folke/tokyonight.nvim",
	event = "VimEnter",
}

function M.config()
	local theme = require("tokyonight")
	theme.setup({
		style = "night",
		transparent = true,
		terminal_colors = true,
		styles = {
			comments = { italic = true },
			keywords = { italic = true },
		},
	})
	vim.cmd([[colorscheme tokyonight]])
end

return M
