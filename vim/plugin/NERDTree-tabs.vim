" Open NERDTree on startup (console).
let g:nerdtree_tabs_open_on_console_startup=1

" Toggles NERDTree.
nnoremap <F3> :NERDTreeTabsToggle<CR>

" Make NERDTree look nice.
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Files to ignore in nerdtree.
let NERDTreeIgnore = ['\.pyc$']

" Do not cd into the location of where we first opened Vim.
let g:nerdtree_tabs_startup_cd = 0

" Don't focus NERDTree when changing tabs.
let g:nerdtree_tabs_focus_on_files = 1

" Quit NERDTree if it's the last buffer open.
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
