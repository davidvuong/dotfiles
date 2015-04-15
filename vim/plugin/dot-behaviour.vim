" When wrapping long lines, only break on space and tabs.
set wrap
set linebreak

" No annoying error sounds.
set noerrorbells

" No visual bell (flashing windows yuck).
set novisualbell
set t_vb=

" No tooltips no menu tips.
set tm=500

set backspace=indent,eol,start   " Allow backspace in insert mode.
set autoread                     " Reload files changed outside of vim.

" === Tabs, spaces and indentation ===

" Spaces instead of tabs.
set expandtab

set tabstop=4
set shiftwidth=4
set softtabstop=4

" 2 spaces per tab for ruby files.
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Treat rabl files as Ruby files to enable syntax highlighting.
au BufRead,BufNewFile *.rabl setf ruby

" Copies indent from current line when starting new line. Indent will be
" deleted if nothing is typed one the new line. Copyindent copies the
" structure of the current line to form the new indent rather than
" reconstructing a new indent using new tabs/spaces.
set autoindent

" Automatically indenting after special characters, see :help smartindent
"set smartindent

" smartindent always moves comments in Python to the start of line.
set cindent

filetype plugin on
filetype indent on

autocmd FileType make set noexpandtab   " Tabs !spaces in makefiles.

" Allows us to freely move outside the bounds of text in visual mode.
set virtualedit=block

" === History ===
set history=1000        " More history.
set undolevels=1000     " More undo frames.
set undoreload=10000    " Saves more lines.

" === Searching ===
set hlsearch            " Highlights the search item.
set ignorecase          " Not case sensitive.
set incsearch           " Finds as you search.
set showmatch           " Shows matching bracket.

" === Swap files ===
set noswapfile " No swap files.
set nobackup
set nowb

set ttyfast     " Smoother redraws.
set lazyredraw  " Don't redraw when running marcos.
