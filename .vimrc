""""""""""""""""""""""""""""""""""""""""""""""""
"
"
" Global
"
"
""""""""""""""""""""""""""""""""""""""""""""""""
" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
set nocompatible 
" indent: 如果用了:set indent,:set ai
" 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
" eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
" start：要想删除此次插入前的输入，需设置这个。
set backspace=indent,eol,start

" 高亮 /{chars} 的内容
set hls

" 键盘映射 ESC
inore jk <ESC>
" 键盘映射 gocode 补全提示
" inore bb <C-x><C-o>
" 键盘映射 set mapleader
let mapleader = ","

" 键盘映射 vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

" 自动设当前编辑的文件所在目录为当前工作路径
" set autochdir

" 显示行号
set number

" 语法高亮
syntax enable
syntax on



""""""""""""""""""""""""""""""""""""""""""""""""
"
"
" Colors Theme
"
"
""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
let g:molokai_original = 1



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
Plugin 'Valloric/YouCompleteMe'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
