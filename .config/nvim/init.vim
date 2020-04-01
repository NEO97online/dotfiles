call plug#begin('~/.config/nvim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Basic settings:
nnoremap c "_c
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Keybindings
map <C-n> :NERDTreeToggle<CR>

" Configuration for coc.nvim
set cmdheight=2
set updatetime=300
set shortmess+=c
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"<Paste>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
