return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    'b0o/nvim-tree-preview.lua',
    dependencies = {
      'nvim-lua/plenary.nvim',
      '3rd/image.nvim', -- Optional, for previewing images
    },
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
  },
}
