local M = {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
}

function M.config()
	local pair = require("nvim-autopairs")
	pair.setup({
		disable_filetype = { "TelescopePrompt", "vim" },
	})
end

return M
