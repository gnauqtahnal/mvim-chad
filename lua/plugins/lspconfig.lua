return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
      "j-hui/fidget.nvim",
      opts = {
        notification = {
          override_vim_notify = true,
          window = {
            winblend = 0,
          },
        },
        integration = {
          ["nvim-tree"] = { enable = true },
        },
      },
    },
  },
  config = function()
    require("nvchad.configs.lspconfig").defaults()

    local lspconfig = require "lspconfig"
    local nvlsp = require "nvchad.configs.lspconfig"
    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              disable = { "missing-fields" },
              globals = { "vim" },
            },
          },
        },
      },
      clangd = {},
    }

    require("mason").setup()
    require("mason-lspconfig").setup {
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}

          server.on_attach = nvlsp.on_attach
          server.on_init = nvlsp.on_init
          server.capabilities = vim.tbl_deep_extend("force", {}, nvlsp.capabilities, server.capabilities or {})

          lspconfig[server_name].setup(server)
        end,
      },
    }
  end,
}
