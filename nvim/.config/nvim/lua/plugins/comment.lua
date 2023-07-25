return {
  "numToStr/Comment.nvim",
  keys = { { "ccc", mode = "n" }, { "cca", mode = "n" } },
  dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
  config = function()
    require("Comment").setup({
      toggler = {
        ---Line-comment toggle keymap
        line = "ccc",
        ---Block-comment toggle keymap
        block = "cca",
      },
      opleader = {
        ---Line-comment keymap
        line = "cc",
        ---Block-comment keymap
        block = "ca",
      },
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })
  end
}
