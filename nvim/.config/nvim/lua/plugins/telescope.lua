local M = {
	"nvim-telescope/telescope.nvim",
	version = "0.1.0",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		"kyazdani42/nvim-web-devicons",
	},
	lazy = true,
	keys = { { "ff", mode = "n" }, { "fb", mode = "n" }, { "ft", mode = "n" } },
}

function M.config()
	local telescope = require("telescope")
	local actions = require("telescope.actions")
	local builtin = require("telescope.builtin")

	local function telescope_buffer_dir()
		return vim.fn.expand("%:p:h")
	end

	local fb_actions = require("telescope").extensions.file_browser.acitons

	telescope.setup({
		defaults = {
			mappings = {
				n = {
					["q"] = actions.close,
				},
			},
		},
		extensions = {
			file_browser = {
				theme = "dropdown",
				hijack_netrw = true,
			},
		},
		pickers = {
			live_grep = {
				additional_args = function(opts)
					return { "--hidden", "-g", "!.git" }
				end,
			},
		},
	})

	telescope.load_extension("file_browser")

	vim.keymap.set("n", "<leader>ff", function()
		builtin.find_files({
			no_ignore = false,
			hidden = true,
		})
	end)

	vim.keymap.set("n", "<leader>fb", function()
		telescope.extensions.file_browser.file_browser({
			path = "%:p:h",
			cwd = telescope_buffer_dir(),
			respect_gitignore = false,
			hidden = true,
			grouped = true,
			previewer = false,
			initial_mode = "normal",
			layout_config = { height = 40 },
		})
		vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "find todos in project" })
	end)
end

return M
