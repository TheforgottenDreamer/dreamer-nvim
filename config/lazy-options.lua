local map = vim.keymap.set

-- LSP CONFIG
map('n', '<leader>gg', vim.lsp.buf.hover, {desc="snippet info"})
map('n', '<leader>gd', vim.lsp.buf.definition, {desc="Get Definition"})
map('n', '<leader>gr', vim.lsp.buf.references, {desc="Go to References"})
map('n', '<leader>ca', vim.lsp.buf.code_action, {desc="Code Action"})

-- FORMATING 
map("n", "<leader>gf", vim.lsp.buf.format, {desc="Format File"})

-- TELESCOPE 
local builtin = require("telescope.builtin")
map("n", "<leader><leader>", builtin.find_files, {desc="find files"})
map("n", "<leader>fg", builtin.live_grep, {desc="live grep"})

-- NEOTREE 
map("n", "<leader>e", "<CMD>:Neotree toggle source=filesystem reveal=true position=right<CR>", {desc="Toggle File Explorer"} )
map("n", "<leader><tab>", "<CMD>:Neotree focus source=filesystem reveal=true position=right<CR>", {desc="Focus File Explorer"})

-- Themes
map("n", "<leader>tt", "<CMD>:Huez<CR>", { noremap = true, desc="Theme Switcher"})

-- BufferLine 
map('n', '<leader>b<left>', "", {desc="Cycle To The Prev Buffer"})
map('n', '<leader>bh', "<Plug>(cokeline-focus-prev)", {desc="Cycle To The Prev Buffer"})
map('n', '<leader>b<right>', "<Plug>(cokeline-focus-prev)", {desc="Cycle To The Next Buffer"})
map('n', '<leader>bl', "<Plug>(cokeline-focus-next)", {desc="Cycle To The Next Buffer"})
map('n', '<leader>b<left>', "<Plug>(cokeline-focus-next)", {desc="Cycle To The Prev Buffer"})
--map('n', '<leader>bb', "<Plug>(cokeline-pick-close)", {desc="Cycle To The Prev Buffer"})
