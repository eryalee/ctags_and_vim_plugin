".vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"For ctags, then it can find the 'tags' file even not in current directory
set tags=tags;/

"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM har to remember
set history=400

"Set to auto read when a file is changed from the outside
set autoread

"Have the mouse enabled all the time:
"when you need to copy from vim, maybe you have to ':set mouse=' first
set mouse=a

"""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""
"Enable syntax highlight
syntax enable

"set colorscheme
"colorscheme elflord
"endif
colorscheme ron

"""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors away from the border- when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
set nu

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch
"imediately show the search result
set is

"""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
set nofen
set fdl=0


"""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
set ambiwidth=double
set smarttab
"Set Tab=4 spaces
set ts=4
set lbr
set tw=500
set selection=inclusive
""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""
"Auto indent
set ai
"Set auto indent width = 4 spaces
set sw=4

"Smart indet
set si

"C-style indenting
set cindent "usage: select codes, press '=' key, the codes will autoindenting

"Wrap lines
set wrap

set incsearch " 增量查找
set hlsearch

set laststatus=2 " 一直显示状态栏

"Encoding settings
"let $LANG="zh_CN.gbk"
"set fileencodings=gbk,chinese,latin-1
"set termencoding=gbk
"set encoding=gbk
"set fileencodings=cp936,utf-8,gbk,chinese,latin-1
"set termencoding=cp936
"set encoding=cp936

" autocmd {{{
"auto open the file last position
"if has("autocmd")
"  autocmd BufReadPost *
"    \ if line("'\"") > 0 && line("'\"") <= line("$") |
"    \    exe "normal g`\"" |
"    \ endif
"endif
"auto write new file
"autocmd BufNewFile * :write
"}}}


"delete all text inside the parentheses
onoremap p i(
"delete all lines before return
onoremap b /return<cr>

"""""""""""""""""""""""""""""""""""""
"plugins

"""""""""""""""""""""""""""""""""""""
" Tlist
if &diff
    let Tlist_Auto_Open=0 "don't auto open when compare two files
else
    let Tlist_Auto_Open=0 "1auto open Tlist when open a file
endif

"set taglist window in right, delete the following line if you don't like
let Tlist_Use_Left_Window=1
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1
"auto close Tlist when exiting file.
let Tlist_Exit_OnlyWindow = 1

