" Preamble/plugins {{{
filetype on
set nocompatible
"set shellcmdflag=-ic
""set shell=/bin/bash\ -i

if has('nvim')
	    runtime! plugin/python_setup.vim
    endif

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'wincent/command-t'
    Plugin 'wincent/terminus'
    Plugin 'scrooloose/nerdtree'
    Plugin 'majutsushi/tagbar'
    Plugin 'bitc/vim-bad-whitespace'
    "Plugin 'LaTeX-Box-Team/LaTeX-Box'
    "Plugin 'lervag/vimtex'
    "Plugin 'vim-scripts/a.vim'
    "Plugin 'itchyny/lightline.vim'
    ""Plugin 'bling/vim-bufferline'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'mattn/gist-vim'
    Plugin 'kien/ctrlp.vim'
    Plugin 'PotatoesMaster/i3-vim-syntax'
    Plugin 'mattn/webapi-vim'
    Plugin 'junegunn/vim-easy-align'
    "Plugin 'ervandew/supertab'
    "Plugin 'tpope/vim-surround'
    "Plugin 'tpope/vim-repeat'
    "Plugin 'benmills/vimux'
    "Plugin 'jcf/vim-latex'
    ""Plugin 'ludovicchabant/vim-gutentags'
    Plugin 'morhetz/gruvbox'
    Plugin 'mhinz/vim-startify'
    Plugin 'google/vim-maktaba'
    Plugin 'google/vim-codefmt'
    Plugin 'easymotion/vim-easymotion'

    Plugin 'vimwiki/vimwiki'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'rhysd/vim-clang-format'


    "no longer using:
    ""Plugin 'jceb/vim-orgmode'
    "Plugin 'freitass/todo.txt-vim'
    ""Plugin 'rwolcott/OmniCppComplete'
    "Plugin 'ajh17/VimCompletesMe'
    ""Plugin 'Shougo/neocomplete.vim'
    "Plugin 'bling/vim-airline'
    "
    call vundle#end()
    filetype plugin indent on
    "
    "
    "
"" }}}

syntax on
colorscheme slate
set number
