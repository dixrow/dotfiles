vim.g.mapleader = ' '

vim.keymap.set('', '<C-h>', '<C-w>h')
vim.keymap.set('', '<C-j>', '<C-w>j')
vim.keymap.set('', '<C-k>', '<C-w>k')
vim.keymap.set('', '<C-l>', '<C-w>l')

--vim.keymap.set('', '<space>', '/')

vim.keymap.set('', '<S-tab>', ':bp<cr>')
vim.keymap.set('', '<tab>', ':bn<cr>')

vim.keymap.set('', 'tt', ':NvimTreeToggle<cr>')

vim.keymap.set('n', '<leader>w', ':w!<cr>')


local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
