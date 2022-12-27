local M = {
	"folke/todo-comments.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	lazy = true,
	event = "BufAdd",
}

function M.config()
	local todo = require("todo-comments")
	todo.setup()
end

return M
