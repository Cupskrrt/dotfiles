local M = {
	"levouh/tint.nvim",
	lazy = true,
	event = "BufWinLeave",
}

function M.config()
	local tint = require("tint")
	tint.setup({
		tint = -60,
		saturation = 0.5,
	})
end

return M
