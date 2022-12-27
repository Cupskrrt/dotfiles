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

	vim.keymap.set("n", "<C-h>", ":bp<CR>")
	vim.keymap.set("n", "<C-l>", ":bn<CR>")
	vim.keymap.set("n", "<C-d>", ":BD<CR>")
end

return M
