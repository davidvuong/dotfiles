" Make NERDTree look nice.
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 40

" Files to ignore in nerdtree.
let NERDTreeIgnore = ['\.pyc$', '\.class$']

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

" Pressing 't' on a file already open in a tab will jump to the tab.
" call NerdTreeAddKeyMap({'key': 't', 'callback': 'NERDTreeMyOpenInTab', 'scope': 'FileNode', 'override': 1})
" function NerdTreeMyOpenInTab(node)
"   call a:node.open({'reuse': 'all', 'where': 't'})
" endfunction

" NERDTree cheatsheet.
" http://www.cheatography.com/stepk/cheat-sheets/vim-nerdtree/
