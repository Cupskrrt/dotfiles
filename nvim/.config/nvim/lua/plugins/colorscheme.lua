return {
  "catppuccin/nvim",
  name = "catppuccin",
  event = "VimEnter",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
    })
    vim.cmd.colorscheme("catppuccin")
  end
}
