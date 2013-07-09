" Use Vim instead of vi. This must be first because it changes other options
" as a side effect.
set nocompatible

" Allows Vim to manage multiple buffers effectively. The current buffer can be
" put to the background without writing to disk. When a background buffer
" becomes current again, marks and undo-history are remembered.
"
" http://items.sjbach.com/319/configuring-vim-right
set hidden

set laststatus=2    " Always show statusline (powerline needs this to show).
set encoding=utf-8  " Neccessary to show Unicode glyphs.

let mapleader=","

" === Init Vundle ===
"
" Loads all plugins specified in ~/.vim/vundle.vim
if filereadable(expand("~/.vim/vundle.vim"))
    source ~/.vim/vundle.vim
endif

" === Scrolling ===
set scrolloff=8         " Start scrolling when we're 8 lines away from margins.
set sidescrolloff=15
set sidescroll=1

" === Completion ===
set wildmode=list:longest
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches.
set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing.
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/cache/**
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
