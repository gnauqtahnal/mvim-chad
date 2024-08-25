return {
  {
    "folke/ts-comments.nvim",
    lazy = false,
    opts = {},
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      {
        "numToStr/Comment.nvim",
        opts = {
          pre_hook = function()
            return vim.bo.commentstring
          end,
        },
      },
    },
  },
}
