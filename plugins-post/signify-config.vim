" Specify Signs
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
let g:signify_sign_change_delete     = g:signify_sign_change . g:signify_sign_delete_first_line

" Turn off showing number of deleted lines
let g:signify_sign_show_count = 0
