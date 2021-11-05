" Powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

" Enable Mode [1] for accessing buffers (used for switching between them)
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Configure sections' content
let g:airline_section_z = '%p%%' " [Percentage]

" Enable Tabbar
let g:airline#extensions#tabline#enabled = 1
