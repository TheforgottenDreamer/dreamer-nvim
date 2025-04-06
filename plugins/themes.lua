return {
  "vague2k/huez.nvim",
  lazy = false,
  branch = "stable",
  event = "UIEnter",
  dependencies = {
    require("dreamer-nvim.config.colorthemes"),
  },
  config = function()
    require("huez").setup({})
  end
}
