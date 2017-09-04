"My vimrc

"Indentation
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Line Numbering
set nu
"set relativenumber

"Word Processing mode using :WP
func! WordProcessorMode()
    setlocal textwidth=80
  	setlocal smartindent
   	setlocal spell spelllang=en_us
   	setlocal noexpandtab
    endfu
com! WP call WordProcessorMode()

"Vundle Packages
set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

"Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
colorscheme Benokai
set mouse=a
set noswapfile
