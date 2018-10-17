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
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType less setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType cpp setlocal ts=2 sts=2 sw=2 expandtab

"scss files are scss
au! BufRead,BufNewFile *.scss setfiletype scss

"Syntastic
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_balloons=0
let g:syntastic_loc_list_height=5
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['mustache'] }
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_args = "--ext .js,.jsx --rulesdir /Users/egoldblum/workpop/Workpop-web/tests/scripts/eslint_rules --cache"
let g:syntastic_html_checkers=['']
let g:syntastic_check_on_wq=0

"Airline
" let g:airline#extensions#tabline#enabled = 1



"make xterm title inherit from vim
set title
"make iterm title inherit from vim
set t_ts=]1;
set t_fs=

"turn on color column at column 81 (1 past the 80 col limit)
set colorcolumn=81

"ctags accessible via f8
nmap <F8> :TagbarToggle<CR>

"string trailing whitespace in js on save
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.jsx :%s/\s\+$//e
autocmd BufWritePre *.avsc :%s/\s\+$//e
autocmd BufWritePre *.cc :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.less :%s/\s\+$//e
autocmd BufWritePre *.graphql :%s/\s\+$//e
autocmd BufWritePre *.yaml :%s/\s\+$//e

"use system clipboard by default
set clipboard=unnamed

" magic eslint rules dir injection
" http://stackoverflow.com/questions/29228575/how-to-specify-custom-rulesdir-for-eslint-in-vim-editor
" let g:syntastic_debug=3
" function! ESLintArgs()
" 	let rules = finddir('eslint_rules', './**')
" 	return rules != '' ? '--rulesdir ' . rules : ''
" endfunction
" autocmd FileType javascript let b:syntastic_javascript_eslint_args = ESLintArgs()

" Mustachify!
let g:mustache_abbreviations = 1
