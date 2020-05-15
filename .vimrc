syntax on
colorscheme slate
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Split right and below.
set splitright
set splitbelow

" See leader key and timeout
let mapleader=","
set showcmd

" Set autoread to be on
set autoread

" Open NerdTree if no files open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NerdTree window with CTRL+n
map <C-n> :NERDTreeToggle<CR>

" Map uppercase W to lowercase w to save automatically.
command WQ wq
command Wq wq
command W w
command Q q

" Close vim if only window left is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Make comments yellow..
hi comment ctermfg=yellow

" Set statusbar to be 2 units
set laststatus=2

" highlight trailing whitespace
highlight ws ctermbg=red guibg=red
match ws /\s\+$/
autocmd BufWinEnter * match ws / \+$/

" remove trailing whitespace with F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" English to Arabic.
nnoremap <Leader>e :<C-U>call EngType()<CR>

" Arabic to English
nnoremap <Leader>a :<C-U>call AraType()<CR>

" Swtich to English - function
function! EngType()
  " To switch back from arabic
  set keymap= "Restore default US keyboard
  set norightleft
endfunction

" Switch to Arabic - function
function! AraType()
  set keymap=arabic
  set rightleft
endfunction

" Load YCM extra files all the time
let g:ycm_extra_conf_globlist = ['~/*']

" Close preview window after completion
let g:ycm_autoclose_preview_window_after_completion = 1

" Auto format on save
let g:clang_format#auto_format = 1

" Set airline theme
let g:airline_theme = 'angr'

" Vundle plugins
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Statusline, totally stealing from Ryan Wolcott

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NerdTREE
Plugin 'scrooloose/nerdtree'

" Tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Clang-format
Plugin 'rhysd/vim-clang-format'

" NerdTree Vim plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Vim-wiki
Plugin 'vimwiki/vimwiki'

" Vim-obsession
Plugin 'tpope/vim-obsession'

" CtrlP (fuzzy file search)
Plugin 'ctrlpvim/ctrlp.vim'

" NerdCommenter
Plugin 'preservim/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
