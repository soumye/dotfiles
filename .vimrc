set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"Plugin 'powerline/powerline'
Plugin 'flazz/vim-colorschemes'
Plugin 'zxqfl/tabnine-vim'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Indentation
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Line Numbering
set nu
"set relativenumber

set mouse=a
"colorscheme molokai
"colorscheme Benokai
colorscheme 1989
set noswapfile

" Always show statusline
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"Use 256 colours (Use this setting only if your terminal supports 256  colours)
set t_Co=256
"let g:Powerline_symbols = "fancy"
"For Transparency
hi Normal guibg=NONE ctermbg=NONE
set encoding=UTF-8

" Powerline setup
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
" Clipboard
set clipboard=unnamed
set clipboard=unnamedplus
set timeoutlen=1000
set ttimeoutlen=5 "For fast esc mode
"Nerdtree
"autocmd vimenter * NERDTree "autoload on start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "for no file specified
" Ctrl+n for autoload
map <C-n> :NERDTreeToggle<CR>
" Exit if only NerdTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Remaps
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Vim commands
" di' : erase between brakets
" o : next line insert
" % : move to next matching bracket
" Ctrl + F/B : Move quickly
" Alt + Up/Down : Move line
" Ctrl + N : NerdTree
" ci : Change inside quotes

