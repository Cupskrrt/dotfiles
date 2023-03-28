local M = { "lukas-reineke/indent-blankline.nvim", event = "InsertEnter" }

function M.config()
	local indent = require("indent_blankline")
	indent.setup({
		show_current_context = true,
		show_current_context_start = true,
	})
end

return M
