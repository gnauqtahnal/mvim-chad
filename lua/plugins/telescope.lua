return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension "ui-select"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[Telescope] find files" },
      {
        "<leader>fa",
        "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
        desc = "[Telescope] find files all",
      },
      { "<leader>fw", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "[Telescope] find word current buffer" },
      { "<leader>fW", "<cmd>Telescope live_grep<cr>", desc = "[Telescope] live grep" },
      { "<leader>ft", "<cmd>Telescope themes<cr>", desc = "[Telescope] themes" },
    },
    opts = {},
  },
}
