syntax enable

colorscheme gruvbox

set history=500
set wildmenu
set ruler
set clipboard=unnamedplus
set number
set cursorline "Cursor line highlight
set list
set lcs=tab:┊\ "


set shiftwidth=4
set tabstop=4

set ai "Autoindent
set wrap "Lines wont break

map <space> /

"Search settings
set ignorecase
set smartcase
set hlsearch
set incsearch

"Persistent undos
set undodir=~/.config/nvim/undodir
set undofile

"Fast split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

"Fast buffer navigation
map <tab> :bn<cr>
map <S-tab> :bp<cr>

set showmatch

set autoread
au focusGained,BufEnter * checktime

"Save cursor position on file exit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let mapleader =" "

nmap <leader>w :w!<cr>
call plug#begin('~/.vim/plugged')
	Plug 'bling/vim-airline'
	Plug 'dhruvasagar/vim-table-mode'
	Plug 'sheerun/vim-polyglot'
	Plug 'w0rp/ale'
	Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'
	Plug 'sirver/UltiSnips'
	Plug 'honza/vim-snippets'
	Plug 'tpope/vim-commentary'
call plug#end()
let g:airline_theme='selenized'
let g:airline#extensions#tabline#enabled = 1

let g:airline_symbols_ascii = 1

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "<C-g>u<CR><c-r>=coc#on_enter()<CR>"
