set nocompatible              " be iMproved, required
filetype off                  " required
" 启用vundle来管理vim插件
if has('win32')
    set rtp+=C:/Users/kakakun/.vim/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif
    
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'raimondi/delimitmate'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin on    " required

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>d dd
nnoremap <leader>ev :vsp ~/_vimrc<cr> 
nnoremap <leader>sv :so ~/_vimrc<cr>
nnoremap <leader>U viwUe
nnoremap <leader>nt :NERDTree<cr>

" 窗口和标签映射
nnoremap <leader>w <c-w>
nnoremap <leader>t :tab

iabbrev @@ zkyeshuoer@gmail.com

" 注释
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<space><esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>

set number
set hlsearch

" 缩进
set ts=4
set expandtab
set autoindent

" 主题
syntax enable
set background=light
colorscheme solarized

"  字体
if has('win32')
    set guifont=Consolas:h11
endif

" 设置文字编码
set fileencodings=utf-8
