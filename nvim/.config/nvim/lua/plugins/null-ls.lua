local M = {
	"jose-elias-alvarez/null-ls.nvim",
	event = "InsertEnter",
	dependencies = {
		"jayp0521/mason-null-ls.nvim",
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	local null_ls = require("null-ls")
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

	null_ls.setup({
		sources = {
			null_ls.builtins.diagnostics.eslint_d,
			null_ls.builtins.formatting.prettierd,
			null_ls.builtins.formatting.stylua,
		},
		on_attach = function(current_client, bufnr)
			if current_client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({
							filter = function(client)
								--  only use null-ls for formatting instead of lsp server
								return client.name == "null-ls"
							end,
							bufnr = bufnr,
						})
					end,
				})
			end
		end,
	})

	local mason_null_ls = require("mason-null-ls")
	mason_null_ls.setup({
		automatic_setup = true,
	})
end

return M
