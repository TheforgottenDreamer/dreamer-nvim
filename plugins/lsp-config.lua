return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        auto_install = true,
        ensure_installed = {
          "lua_ls",
          "cmake",
          "clangd",
          "glsl_analyzer",
          "jsonls"
        }

      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.cmake.setup({})
      lspconfig.clangd.setup({})
      lspconfig.glsl_analyzer.setup({
        filetypes= {


        }
      })

      require('lspconfig').jsonls.setup {
        settings = {
          json = {
            schemas = require('schemastore').json.schemas {
              replace = {
                ['package.json'] = {
                  description = 'package.json overridden',
                  fileMatch = { 'package.json' },
                  name = 'package.json',
                  url = 'https://example.com/package.json',
                },
              },
            },
            validate = { enable = true },
          },
        },
      }
    end
  }
}
