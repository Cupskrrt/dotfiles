return {
  "akinsho/bufferline.nvim",
  version = "v3.*",
  dependencies = { "kyazdani42/nvim-web-devicons", "qpkorr/vim-bufkill" },
  event = "BufAdd",
  config = function()
    require("bufferline").setup({
      options = {
        diagnostic = "nvim_lsp"
      }
    })
  end
}
