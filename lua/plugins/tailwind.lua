return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "onsails/lspkind.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      extension = {
        patterns = {
          javascript = { "clsx%(([^)]+)%)" },
          javascriptreact = { "clsx%(([^)]+)%)" },
          typescript = { "clsx%(([^)]+)%)" },
          typescriptreact = { "clsx%(([^)]+)%)" },
        },
      },
    },
  },
  config = function()
    local opts = require "nvchad.configs.cmp"

    opts = vim.tbl_deep_extend("force", {}, opts, {
      formatting = {
        format = require("lspkind").cmp_format {
          before = require("tailwind-tools.cmp").lspkind_format,
        },
      },
    })

    require("cmp").setup(opts)
  end,
}
