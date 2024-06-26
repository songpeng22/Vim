" vim
set nocompatible

" mouse - default "", "a" for GUI and Win32
" mouse=r - do not generate VISUAL when select by mouse=a, also not generate indent error by mouse= 
set mouse=r
set paste

" tab
" defines how much space width equals one tab -> this decide how long a tab looks like
" a tab takes 4-spaces-wide -> default 8
set tabstop=4
" defines how much space is inserted in file when tab pressed -> this decide how many spaces is inserted by press tab or removed by press backspace
" softtabstop=0 && noexpandtab -> a tab just a tab
set softtabstop=4
" this decide how long a indent is -> when shiftwidth=8 && tabstop=4 && noexpandtab, when tab pressed, two 0x09 is inserted in file
" a indent takes 4-spaces-wide -> default 8
set shiftwidth=4
" smartly decide indent a tab or 4 spaces
" backspace will unindent 4-space-wide
set smarttab
" a tab consist of 4 spaces -> when tabstop=4 softtabstop=4 shiftwidth=4 expandtab, when tab pressed four 0x20 is inserted in file
set expandtab
" or not use space instead of tab
"set noexpandtab

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
call plug#end()
" vim-plug colorscheme
colorscheme molokai
" colorscheme bluez

" vim-plug gutentags
" gutentags: enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" gutentags: config project root markers.
let g:gutentags_project_root = ['.root','.git']
" gutentags: generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
" gutentags: find symbol
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
" gutentags: find definition
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
" gutentags: find functions called by this function
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
" gutentags: find caller
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
" gutentags: find text
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
" gutentags: find egrep pattern
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
" gutentags: find this file
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
" gutentags: find files including this file
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
" gutentags: find places where this symbol is assigned a value
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>

" file
" 根据文档类型，自动安排缩进，比如对待.c文件和对待makefile会有不同的缩进
filetype indent on
" 文件编码（without bom）：
set nobomb
" 内部编码
set encoding=utf-8
" 文件编码utf-8
set fileencoding=utf-8
" 编码列表
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" line number
" set nu
