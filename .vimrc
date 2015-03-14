call pathogen#infect()

set incsearch
set shiftwidth=2
set expandtab
set autoindent
set softtabstop=2
set ttymouse=xterm2
set mouse=a

"Highlighting
syntax on
set hlsearch
" Line Numbers
set nu
" Ignore case when searching unless search string contains upper case
set ignorecase
set smartcase
set laststatus=2
set ruler
set rulerformat=%25([%{&fileformat}]%14(%l,%c%V%)%=%4P%)

set backspace=2
set hidden

"Indent
set cindent
set cinoptions=(0

"Indent colors
set background=dark

"folding
set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML


filetype plugin on
filetype on
filetype indent on

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
