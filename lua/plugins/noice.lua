return {
  "folke/noice.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  lazy = false,
  -- TODO: customize the opts
  opts = {
    notify = {
      enabled = false,
    },
    lsp = {
      signature = {
        enabled = false,
      },
    },
  },
}
