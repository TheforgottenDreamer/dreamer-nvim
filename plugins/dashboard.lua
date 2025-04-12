return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    local logo= [[

      888b.                                         8b  8        w           
      8   8 8d8b .d88b .d88 8d8b.d8b. .d88b 8d8b    8Ybm8 Yb  dP w 8d8b.d8b. 
      8   8 8P   8.dP' 8  8 8P Y8P Y8 8.dP' 8P      8  "8  YbdP  8 8P Y8P Y8 
      888P' 8    `Y88P `Y88 8   8   8 `Y88P 8       8   8   YP   8 8   8   8 

      Dreamer Nvim
    ]]

    require("dashboard").setup({
      theme = "hyper",
      config = {
        vertical_center = false, -- Center the Dashboard on the vertical (from top to bottom)
        theme = "",
        header = vim.split(logo, '\n'),
        week_header = {
          enable = false,
        },
        shortcut = {
          {
            desc = '󰊳 Update',
            group = '@property',
            action = 'Lazy update',
            key = 'u'
          },
          {
            desc = ' Github',
            group = 'label',
            action = function() vim.ui.open("https://github.com/TheforgottenDreamer") end,
            key = 'g'
          },
          {
            desc = ' Linux Dotfiles',
            group = 'label',
            action = function() vim.ui.open("https://github.com/TheforgottenDreamer/dotfiles") end, key = 'd'
          }
        },
        project = { enable = false },
        mru = { enable = false },
        footer = { "One Of The Dreamers Left In The Wasteland" },
      }
    })

  end,
  dependencies = { {"nvim-tree/nvim-web-devicons"}}
}
