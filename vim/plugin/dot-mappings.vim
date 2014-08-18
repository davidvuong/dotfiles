" Generic Non-plug-in specific mappings.

" ,p to toggle paste mode.
map <leader>p :set paste!<CR>

" Toggle spell check.
map <leader>ss :setlocal spell!<CR>

map <leader>e :edit<CR>

" map ;; to Esc
map! ;; <Esc>

" Easier to indent with < and > keys.
vnoremap < <gv
vnoremap > >gv

" Easier to move between windows.
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" Scroll between opened tabs in F6.
map <F6> <C-W>w

map - <C-W>-
map + <C-W>+

" Clear current search highlight by double tapping //
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
