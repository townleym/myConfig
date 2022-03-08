" .vimrc

" from:
" http://csswizardry.com/2014/06/vim-for-people-who-think-things-like-vim-are-weird-and-hard/
	

" No compatibility
set nocompatible
set encoding=utf-8

filetype off                  " required

" Syntax highlighting
" Detect filetype
filetype plugin on
filetype plugin indent on    " required Vundle and pathogen

" Enable syntax highighting
syntax enable
" 256 colours, please
set t_Co=256
" Use Zenburn!
set background=light
colorscheme zenburn

" to automatically select markdown syntax highlighting
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Set relevant filetypes
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown

" Some stuff from the vimrc_example.vim file
if has("vms")
    set nobackup    " do not keep backup file, use versions instead
else
    set backup
endif

set history=50
set showcmd
set hls             " highlight search

if has('mouse')
    set mouse=a
endif

" Tabs, indentation and lines

filetype plugin indent on
" 4 spaces please
" set expandtab "expands tabs to spaces. Shite.
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround
" No line-wrapping
" set nowrap

" I like wrap for general text
" from http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
set wrap
set linebreak

" Set nice list characters
" set nolist
set list
set listchars=trail:~,precedes:«,extends:»,eol:↲,tab:▸\ 


" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Underscores denote words
set iskeyword-=_



" Visual decorations

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title

" I have turned the following off. Kinda cool, but kinda 
" distracting (for now)
"
" Set relative line numbers if we can...
" if exists("+relativenumber")
    " Due to a problem with relative line numbers not persisting across new
    " tabs and splits, set no line numbers at all...
"    set nonumber
    " ..then set relative ones.
"    set relativenumber
" ...otherwise let’s just have regular ones.
"else
"endif
"    set number

" set line numbers
set number

" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
    set colorcolumn=81
endif
" Highlight current line
set cursorline
" Don’t keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase

