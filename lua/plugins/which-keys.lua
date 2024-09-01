return {
  "folke/which-key.nvim",
  lazy = false,
  keys = {
    { "n", "<leader>wK", "<cmd>WhichKey<CR>", desc = "[WhichKey] all keymaps" },
    {
      "n",
      "<leader>wk",
      function()
        vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
      end,
      desc = "[WhichKey] query lookup",
    },
  },
  opts = {
    preset = "modern",
  },
  config = function()
    local wk = require "which-key"

    wk.add {
      { "<leader>b", group = "Buffer" },
      { "<leader>e", group = "NvimTree/Oil" },
      { "<leader>f", group = "Telescope" },
      { "<leader>l", group = "Lsp" },
      { "<leader>t", group = "Terminal" },
      { "<leader>w", group = "WhichKey" },
      { "<leader>m", group = "MultiCursor" },
    }
  end,
}
