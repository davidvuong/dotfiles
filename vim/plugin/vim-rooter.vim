" Stop vim-rooter from echoing the project directory.
let g:rooter_silent_chdir = 1

" Add .vim as an auto root file.
let g:rooter_patterns = ['.git', '.git/']

" Locally change directory.
let g:rooter_use_lcd = 1

" Stop vim-rooter changing directory automatically.
let g:rooter_manual_only = 1
