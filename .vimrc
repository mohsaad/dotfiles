syntax on
colorscheme slate
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Split right and below.
set splitright
set splitbelow


execute pathogen#infect()
call pathogen#helptags()

"Open NerdTree if no files open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NerdTree window with CTRL+n
map <C-n> :NERDTreeToggle<CR>

" Map uppercase W to lowercase w to save automatically.
map W w

" Close vim if only window left is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Make comments white.
hi comment ctermfg=white
