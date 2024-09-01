local o = vim.opt
local unmap = vim.keymap.del

o.updatetime = 100

-- Comment
-- unmap("n", "<leader>/")
-- unmap("v", "<leader>/")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-context",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    opts = {
      ensure_installed = { "vim", "lua", "vimdoc", "html", "css", "c", "jsx", "javascript", "tsx", "typescript" },
      highlight = {
        enable = true,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    -- dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    dependencies = {
      -- "nvim-treesitter/nvim-treesitter",
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
