require("plugins")
require("opt")
require("hotkeys")

vim.cmd([[
"Save cursor position on file exit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

call plug#begin('~/.vim/plugged')
	Plug 'dhruvasagar/vim-table-mode'
"	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"	Plug 'sirver/UltiSnips'
	Plug 'honza/vim-snippets'
call plug#end()
let g:airline_theme='selenized'
let g:airline#extensions#tabline#enabled = 1


"inoremap <silent><expr> <c-space> coc#refresh()
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "<C-g>u<CR><c-r>=coc#on_enter()<CR>"

let g:airline_symbols_ascii = 1

]])

