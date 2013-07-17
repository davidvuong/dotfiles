" Mark syntax errors with :signs
let g:syntastic_enable_signs=1

" Do not automatically jump to the error when saving the file.
let g:syntastic_auto_jump=0

" Show the error list automatically.
let g:syntastic_auto_loc_list=1

" Care about warnings.
let g:syntastic_quiet_warnings=0

" Don't run whenever buffers are written to disk. Skip these checks when you
" issue |:wq|, |:x|, and |:ZZ|
let g:syntastic_check_on_wq=0

" TODO: I don't like the automatic check on :w
"       I save too often and this slows things down a lot.
