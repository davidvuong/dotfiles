" Show the error list automatically.
let g:syntastic_auto_loc_list=1

" Automatically jump to the error when saving the file.
let g:syntastic_auto_jump=0

" Mark syntax errors with :signs
let g:syntastic_enable_signs=1

" Care about warnings.
let g:syntastic_quiet_messages = {'level': 'warnings'}

" Don't run whenever buffers are written to disk. Skip these checks when you
" issue |:wq|, |:x|, and |:ZZ|
let g:syntastic_check_on_wq=0
