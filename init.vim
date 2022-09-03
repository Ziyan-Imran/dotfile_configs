" Some basic setups
" Copied from https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd
set encoding=utf-8
set nu

call plug#begin("~/.vim/plugged")
  " Plugin Section
Plug 'dracula/vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end() "Config Section

" Plugin Configs
" dracula/vim
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
" colorscheme dracula
colorscheme carbonfox

" scrooloose/nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <A-b> :NERDTreeToggle<CR>

" Add support to nvim integrated terminal
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" Switching between panels
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Airline options
let g:airline_powerline_fonts = 1
set laststatus=2


" Make search smart-case sensitive
set ignorecase
set smartcase

