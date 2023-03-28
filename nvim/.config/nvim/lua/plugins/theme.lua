local M = {
	"catppuccin/nvim",
	name = "catppuccin",
	event = "VimEnter",
}

function M.config()
	vim.cmd.colorscheme("catppuccin")
	require("catppuccin").setup({
		flavour = "mocha",
	})
end

return M
