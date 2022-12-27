local M = {
	"VonHeikemen/lsp-zero.nvim",
	event = "InsertEnter",
	dependencies = {
		-- LSP Support
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- Autocompletion
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",

		-- Snippets
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",

		-- Utils
		"onsails/lspkind.nvim",
	},
}

function M.config()
	local lsp = require("lsp-zero")
	lsp.preset("recommended")

	lsp.set_preferences({
		suggest_lsp_servers = true,
		setup_servers_on_start = true,
		set_lsp_keymaps = false,
		configure_diagnostics = true,
		cmp_capabilities = true,
		manage_nvim_cmp = true,
		call_server = "local",
		sign_icons = {
			error = "E",
			warn = "W",
			hint = "H",
			info = "I",
		},
	})

	local cmp = require("cmp")
	local lspkind = require("lspkind")

	lsp.setup_nvim_cmp({
		mapping = lsp.defaults.cmp_mappings({
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.close(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Replace,
				select = true,
			}),
		}),
		sources = {
			{ name = "path" },
			{ name = "nvim_lsp" },
			{ name = "buffer" },
			{ name = "cmp" },
		},
		formatting = {
			format = lspkind.cmp_format({
				mode = "text",
				maxwidth = 50,
				ellipsis_char = "...",
			}),
		},
	})

	lsp.setup()

	vim.diagnostic.config({
		virtual_text = true,
		signs = true,
		update_in_insert = false,
		underline = true,
		severity_sort = false,
		float = true,
	})
end

return M
