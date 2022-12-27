local M = {
	"nvim-lualine/lualine.nvim",
	event = "BufAdd",
	lazy = true,
}

function M.config()
	local lualine = require("lualine")
	lualine.setup({
		options = {
			icons_enabled = true,
			theme = "tokyonight",
		},
		sections = {
			lualine_a = { "mode", "branch" },
			lualine_b = { "filename" },
			lualine_c = {},
			lualine_x = { "diff" },
			lualine_y = { "filesize", "filetype" },
			lualine_z = {},
		},
	})
end

return M
