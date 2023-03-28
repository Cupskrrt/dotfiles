local M = {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = true,
	event = "BufAdd",
}

function M.config()
	local todo = require("todo-comments")
	todo.setup({
		search = {
			args = {
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--hidden",
				"--glob=!node_modules",
			},
		},
	})
end

return M
