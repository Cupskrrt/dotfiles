return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufAdd",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
        disable = {},
      },
      ensure_installed = {
        "tsx",
        "lua",
        "json",
        "css",
        "javascript",
        "vim",
      },
      autotag = {
        enable = true,
      },
    })
  end
}
