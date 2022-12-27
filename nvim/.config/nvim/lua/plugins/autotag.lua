local M = {
	"windwp/nvim-ts-autotag",
	event = "InsertEnter",
}

function M.config()
	local autotag = require("nvim-ts-autotag")
	autotag.setup()
end

return M
