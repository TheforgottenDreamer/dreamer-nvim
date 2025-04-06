return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        sync_install = false,
        auto_install = true,
        ensure_installed = {
          "lua",
          "cpp",
          "c",
          "glsl",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end
  }
}
