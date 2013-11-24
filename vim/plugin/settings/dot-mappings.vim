" Generic Non-plug-in specific mappings.

" Toggle spell check.
map <leader>ss :setlocal spell!<CR>

" Toggle paste.
map <leader>p :set paste!<CR>

map <leader>e :edit<CR>

" Easier to indent with < and > keys.
vnoremap < <gv
vnoremap > >gv

" Easier to move between windows.
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Adds the current datetime when <F2> is pressed inside insert mode.
imap <F2> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

nnoremap <silent> vv <C-w>v     " Split vertical.
nnoremap <silent> ss <C-w>s     " Split horizontal.

" <F1> for help is annoying. :help is more useful.
noremap <F1> <nop>

" j and k scrolls by lines not rows. If a line takes up multiple rows,
" it can skip them. gj and gk allows us to scroll by row.
nnoremap j gj
nnoremap k gk

" NOTE: Enable this when I'm more comfortable with hjkl.
" Resize windows with arrow keys
" nnoremap <D-Up> <C-w>+
" nnoremap <D-Down> <C-w>-
" nnoremap <D-Left> <C-w><
" nnoremap <D-Right>  <C-w>>
