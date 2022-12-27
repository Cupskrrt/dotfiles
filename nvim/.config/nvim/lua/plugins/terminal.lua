local M = {
	"akinsho/toggleterm.nvim",
	version = "*",
	cmd = "ToggleTerm",
	lazy = true,
}

function M.config()
	local term = require("toggleterm")
	term.setup({
		direction = "float",
		shell = vim.o.shell,
		float_opts = {
			border = "curved",
			width = 200,
			height = 100,
		},
		persist_size = false,
	})

	function _G.set_terminal_keymaps()
		local opts = { buffer = 0 }
		vim.keymap.set("t", "ww", [[<C-\><C-n>]], opts)
	end

	vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
end

return M
