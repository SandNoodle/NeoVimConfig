" ------------------------------------
" -------------- Split ---------------
" ------------------------------------

" Navigation bwtween splits
nnoremap <silent><C-J> <C-W><C-J>
nnoremap <silent><C-K> <C-W><C-K>
nnoremap <silent><C-L> <C-W><C-L>
nnoremap <silent><C-H> <C-W><C-H>

" Resize split
nnoremap <silent><C-up> <C-W>+
nnoremap <silent><C-down> <C-W>-
nnoremap <silent><C-left> <C-W>>
nnoremap <silent><C-right> <C-W><

" ------------------------------------
" -------- Buffer navigation ---------
" ------------------------------------

nmap <silent><F2> <Plug>AirlineSelectPrevTab
nmap <silent><F3> <Plug>AirlineSelectNextTab

" ------------------------------------
" ------------- Terminal -------------
" ------------------------------------

" Open terminal horizontaly / verticaly in the new split
command! -nargs=* VT vsplit | terminal <args>
command! -nargs=* HT split | terminal <args>

" Accept <ESC> as valid keybind to exit insert mode
tnoremap <silent><Esc> <C-\><C-n>

" ------------------------------------
" ----------- Fuzzy finder -----------
" ------------------------------------

nnoremap <silent><leader>ff <cmd>Telescope find_files<cr>
nnoremap <silent><leader>fg <cmd>Telescope live_grep<cr>
nnoremap <silent><leader>fb <cmd>Telescope buffers<cr>
nnoremap <silent><leader>ft <cmd>Telescope help_tags<cr>

" ------------------------------------
" ------------- NerdTree -------------
" ------------------------------------

nnoremap <silent> <C-f> :NERDTreeFocus<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" ------------------------------------
" --------------- Fern ---------------
" ------------------------------------

" noremap <silent> <C-f> :Fern . -drawer -toggle <CR>

" function! s:init_fern() abort
" 	nmap <buffer> H <Plug>(fern-action-open:split)
" 	nmap <buffer> V <Plug>(fern-action-open:vsplit)
" 	nmap <buffer> R <Plug>(fern-action-rename)
" 	nmap <buffer> M <Plug>(fern-action-move)
" endfunction

" Invoked after fern buffer was initialized but before displaying any files
" augroup fern-custom
" 	autocmd! *
" 	autocmd FileType fern call s:init_fern()
" augroup END

" ------------------------------------
" --------------- File ---------------
" ------------------------------------

nnoremap <silent> gf :edit <cfile><CR>

" ------------------------------------
" --------------- Misc ---------------
" ------------------------------------

" Exit Insert mode using Ctrl + c
inoremap <silent> <C-c> <ESC>

" Better indentation
vnoremap > >gv
vnoremap < <gv

" Move lines in Visual, Visual Line and Normal mode
nnoremap <silent> <A-j> :m .+1<CR>==
nnoremap <silent> <A-k> :m .-2<CR>==
inoremap <silent> <A-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <A-k> <Esc>:m .-2<CR>==gi
xnoremap <silent> <A-j> <Esc>:m .+1<CR>==gi
xnoremap <silent> <A-k> <Esc>:m .-2<CR>==gi

" Copy / paste to/from the CLIPBOARD
noremap <silent><leader>y "*y<CR>
noremap <silent><leader>p "*p<CR>

" Toggle show indent
command! TI :set list!

" Reload config
map <leader>res :source $MYVIMRC<CR>
