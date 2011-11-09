"load pathogen runtime
call pathogen#infect()

"turn on syntax highlighting
syntax enable

"use the dark solarized colorscheme
set background=dark
colorscheme solarized

"auto enable plugins and indent scripts based on filetype
filetype plugin indent on

"how many characters widths are indented with >> or autoindent
set shiftwidth=4

"how many characters widths tabs are displayed as 
set tabstop=4

"how many characters widths are indented when hitting tab in insert mode 
set softtabstop=4

"hitting tab will insert spaces
"set expandtab

"shows last cmd or current cmd info in status line
set showcmd
"shows line and column number and percentage thru file in status line
set ruler
"shows line numbers inline 
set number

"in insert mode allow backspace to operate over start of lines, autoindents,
"and end of lines
set backspace=start,indent,eol

"wrap searchs around end of file
set wrapscan
"highlight search matches as the search query is being entered
set incsearch
"automatically write a buffer when switching buffers
set autowrite

"Force these spacing settings based on file type 
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"use node for jslint.vim
let $JS_CMD='node'
