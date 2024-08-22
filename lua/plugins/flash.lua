return {
  "folke/flash.nvim",
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "goto string (flash)",
    },
    {
      "S",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "select with treesitter (flash)",
    },
    -- {
    --   "<leader>sR",
    --   mode = { "o", "x" },
    --   function()
    --     require("flash").treesitter_search()
    --   end,
    --   desc = "select with treesitter visual mode (flash)",
    -- },
    -- {
    --   "<leader>st",
    --   mode = { "c" },
    --   function()
    --     require("flash").toggle()
    --   end,
    --   desc = "toggle flash search (flash)",
    -- },
  },
  opts = {},
}
