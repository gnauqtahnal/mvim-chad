return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  keys = {
    { "<leader>eo", "<cmd>:Oil --float<cr>", desc = "[Oil] open float" },
  },
  dependencies = {
    { "echasnovski/mini.icons", opts = {} },
  },
  opts = {
    columns = {
      "icon",
      "size",
    },
  },
}
