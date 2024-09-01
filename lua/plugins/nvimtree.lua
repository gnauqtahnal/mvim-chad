return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "[NvimTree] toggle" },
    { "<leader>ef", "<cmd>NvimTreeFocus<CR>", desc = "[NvimTree] focus" },
  },
  opts = {
    renderer = {
      indent_markers = {
        icons = {
          corner = "╰",
        },
      },
      icons = {
        git_placement = "after",
        modified_placement = "after",
        hidden_placement = "after",
      },
    },
  },
}
