" A lot of these functions have been taken from:
"
" https://github.com/skwp/dotfiles/tree/master/vim/plugin/settings

" If there isn't one, append a semi colon to the end of the current line.
function! s:appendSemiColon()
  if getline('.') !~ ';$'
    let original_cursor_position = getpos('.')
    exec("s/$/;/")
    call setpos('.', original_cursor_position)
  endif
endfunction

" For programming languages using a semi colon at the end of statement.
autocmd FileType c,cpp,css,java,javascript,perl,php,jade nmap <silent> ;; :call <SID>appendSemiColon()<CR>
autocmd FileType c,cpp,css,java,javascript,perl,php,jade inoremap <silent> ;; <ESC>:call <SID>appendSemiColon()<CR>a

" ===============================================

" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()
nmap ,w :StripTrailingWhitespaces<CR>

" Automatically removes trailing white spaces on save.
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" Add more languages here.
autocmd FileType c,cpp,java,python,sql,ruby autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
