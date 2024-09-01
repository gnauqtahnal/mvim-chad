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
  },
  opts = {},
}
