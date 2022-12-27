local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "BufAdd",
}

function M.config()
	local ts = require("nvim-treesitter.configs")
	ts.setup({
		highlight = {
			enable = true,
			disable = {},
		},
		ensure_installed = {
			"tsx",
			"lua",
			"json",
			"css",
			"javascript",
			"vim",
			"http",
		},
		autotag = {
			enable = true,
		},
	})
end

return M
