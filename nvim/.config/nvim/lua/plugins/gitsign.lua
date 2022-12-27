local M = {
	"lewis6991/gitsigns.nvim",
	event = "InsertEnter",
}

function M.config()
	local gitsigns = require("gitsigns")
	gitsigns.setup()
end

return M
