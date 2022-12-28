local M = {
	"akinsho/bufferline.nvim",
	version = "v3.*",
	dependencies = { "kyazdani42/nvim-web-devicons", "qpkorr/vim-bufkill" },
	event = "BufAdd",
}

function M.config()
	local bufferline = require("bufferline")
	bufferline.setup({
		options = {
			diagnostics = "nvim_lsp",
		},
	})
end

return M
