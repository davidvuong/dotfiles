" https://github.com/gmarik/vundle
filetype off                    " required.

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required).
Bundle 'gmarik/vundle'

" My Bundles:

" Don't forget to symlink to vim/colors/
"
"   cd ~
"   ln -s ~/dotfiles/vim/bundles/vim-colors-solarized/colors/solarized.vim ~/dotfiles/vim/colors/solarized.vim
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'

" Syntastic needs flake8|pyflakes|pylint for python files. I'm using
" flake8 so just `pip install flake8` before using syntastic.
Bundle 'scrooloose/syntastic'

Bundle 'tpope/vim-fugitive'

" FuzzyFinder depends on the L9 library.
Bundle 'vim-scripts/L9'
Bundle 'FuzzyFinder'

Bundle 'scrooloose/nerdtree'

filetype plugin indent on       " required.

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
