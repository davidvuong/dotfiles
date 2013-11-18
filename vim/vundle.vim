" NOTE: vim +BundleInstall +qall to install from comand line.
" https://github.com/gmarik/vundle
filetype off " required.

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required).
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
"
" Syntastic needs flake8|pyflakes|pylint for python files. I'm using
" flake8 so just `pip install flake8` before using syntastic.
Bundle 'scrooloose/syntastic'
Bundle 'vim-flake8'

" Displaying ANSI colours inside VIM.
Bundle 'vim-scripts/AnsiEsc.vim.git'

" Git.
Bundle 'tpope/vim-fugitive'

" FuzzyFinder depends on the L9 library.
Bundle 'vim-scripts/L9'
Bundle 'FuzzyFinder'

Bundle 'scrooloose/nerdtree'

" A more powerful undo utility.
Bundle 'sjl/gundo.vim'

" Automatically add 'end' to certain structures in ruby.
Bundle 'tpope/vim-endwise.git'

" A more intelligent auto completion.
Bundle 'Shougo/neocomplcache.git'

" Surrounds text with quotes, brackets, ... etc.
"   Beginner Tips:
"       - Visual mode:
"           * Highlight word, S"
"       - Normal mode:
"           * csw"
Bundle 'tpope/vim-surround.git'

filetype plugin indent on " required.

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
