vim.api.nvim_set_keymap(
  "n",
  "<leader>do",
  "<cmd>lua vim.diagnostic.open_float()<CR>",
  { noremap = true, silent = true }
)
vim.diagnostic.config({
  virtual_text = {
    source = "always", -- Or "if_many"
    prefix = "●",  -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
