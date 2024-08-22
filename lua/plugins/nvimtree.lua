return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "NvimTree Toggle" },
    { "<leader>ef", "<cmd>NvimTreeFocus<CR>", desc = "NvimTree Focus" },
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
    actions = {
      open_file = {
        quit_on_open = true,
      },
    },
  },
}
