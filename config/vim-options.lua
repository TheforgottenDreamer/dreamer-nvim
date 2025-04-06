vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.swapfile = false
vim.wo.number = true
vim.api.nvim_set_option("clipboard", "unnamed")

vim.cmd("autocmd BufNewFile,BufRead *.vert set filetype=glsl")
vim.cmd("autocmd BufNewFile,BufRead *.tesc set filetype=glsl")
vim.cmd("autocmd BufNewFile,BufRead *.tese set filetype=glsl")
vim.cmd("autocmd BufNewFile,BufRead *.frag set filetype=glsl")
vim.cmd("autocmd BufNewFile,BufRead *.geom set filetype=glsl")
vim.cmd("autocmd BufNewFile,BufRead *.comp set filetype=glsl")
