vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.lcs='tab:┊ '
vim.opt.list = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.shiftwidth=4
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.tabstop=4
vim.opt.undodir = vim.fn.expand("~/.config/nvim/undodir/")
vim.opt.undofile = true
vim.opt.undolevels=1000
vim.opt.wildmenu = true
vim.opt.wrap = true -- Lines wont break

vim.cmd([[ colorscheme gruvbox ]])
