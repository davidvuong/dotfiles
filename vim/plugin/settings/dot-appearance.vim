" Enable syntax highlighting.
syntax on
set background=dark

try
    colorscheme solarized
catch
    colorscheme default
endtry

" Use 256colors.
set t_Co=256

" Display tabs/trailing white spaces.
set list
set listchars=tab:▸\ ,trail:.,extends:#,nbsp:.

" Display numbers.
set number

set showcmd     " Show incomplete cmds down the bottom.
set showmode    " Show current mode down the bottom.

" Display vertical line at 86 characters.
let &colorcolumn=86
highlight ColorColumn ctermbg=235 guibg=#2c2d27
