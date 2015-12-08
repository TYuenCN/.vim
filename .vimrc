""""""""""""""""""""""""""""""""""""""""""""""""
"
"
" Global
"
"
""""""""""""""""""""""""""""""""""""""""""""""""

" 键盘映射
inore jk <ESC>
inore bb <C-x><C-o>

" 显示行号
set number

" 语法高亮
syntax enable
syntax on


""""""""""""""""""""""""""""""""""""""""""""""""
"
"
" Powerline 插件美化vim状态栏的显示
"
"
""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2 " Always show the statusline 
set t_Co=256 " Explicitly tell Vim that the terminal support 256 colors 
let g:Powerline_symbols = 'unicode'







""""""""""""""""""""""""""""""""""""""""""""""""
"
"
" Vundle.vim
"
"
""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
