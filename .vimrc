"load pathogen runtime
call pathogen#infect()

"turn off vi compatiblity so that powerline will work
set nocompatible 

"turn on syntax highlighting
syntax enable

"explictly set 256-color terminal mode
set t_Co=256

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

"always show status line
set laststatus=2

"THE FOLLOWING RULES ARE SUBSUMED BY POWERLINE
"shows last cmd or current cmd info in status line
set showcmd
"shows line and column number and percentage thru file in status line
set ruler
"shows line numbers inline 
set number
"THE PREVIOUS RULES ARE SUBSUMED BY POWERLINE

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

"Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_balloons=0
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html', 'mustache'] }

"Syntastic - force jshint usage instead of jslint
let g:syntastic_javascript_checker='jshint'
let g:syntastic_javascript_jshint_conf='sub'

"Syntastic jslint conf
"tolerate missing ES5 use strict pragma, assume browser globals
"let g:syntastic_javascript_jslint_conf="--indent 2 --sloppy --nomen --node --white --vars"
"use node for jslint.vim
"let $JS_CMD='node'


"zen coding action key
let g:user_zen_leader_key="<c-y>"
