return {
  "smoka7/multicursors.nvim",
  dependencies = { "nvimtools/hydra.nvim" },
  opts = {},
  cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
  keys = {
    {
      mode = { "v", "n" },
      "<Leader>mm",
      "<cmd>MCstart<cr>",
      desc = "[MultiCursor] select",
    },
  },
}
