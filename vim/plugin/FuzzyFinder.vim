" leader=','
nnoremap <leader>f :FufFile<cr>
nnoremap <leader>b :FufBuffer<cr>
nnoremap <leader>t :FufTag<cr>

" limit number of displayed matches
" (makes response instant even on huge source trees)
let g:fuf_enumeratingLimit=60
