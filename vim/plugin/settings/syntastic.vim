" I really don't like it when checks are made on every save.
" TODO: This doesn't work... (although it will work if it's inside vimrc)
let g:syntastic_mode_map = {'mode': 'passive',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': []}
map <F7> :SyntasticCheck<CR>

" Show the error list automatically.
let g:syntastic_auto_loc_list=1

" Do not automatically jump to the error when saving the file.
let g:syntastic_auto_jump=1

" Mark syntax errors with :signs
let g:syntastic_enable_signs=1

" Care about warnings.
let g:syntastic_quiet_warnings=0

" Don't run whenever buffers are written to disk. Skip these checks when you
" issue |:wq|, |:x|, and |:ZZ|
let g:syntastic_check_on_wq=0

" It's time to move away from v2.x.x and onto v3.x.x
let g:syntastic_python_python_exe = 'python3'
