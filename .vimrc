" 显示行号
set nu
" 用空格来代替tab
set expandtab
" 用几个空格来代替一个tab
set shiftwidth=4
" 缩进空格数
set tabstop=4
" 颜色主题
color dracula
" 颜色语法生效
syntax on
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
