" ------------------------------------
" --------- Split navigation ---------
" ------------------------------------

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
" --------------- COC ----------------
" ------------------------------------

" Show autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

" Use <TAB> for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <TAB>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Rename Definition
nmap <silent> dr <Plug>(coc-rename)

" GOTOs
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gt :call CocAction('jumpTypeDefinition', 'vsplit')<CR>
nmap <silent> gi :call CocAction('jumpImplementation', 'vsplit')<CR>
nmap <silent> gr :call CocAction('jumpReferences', 'vsplit')<CR>

" GOTO to errors
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" ------------------------------------
" ------------- NerdTree -------------
" ------------------------------------

nnoremap <silent> <C-f> :NERDTreeFocus<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" ------------------------------------
" --------------- Misc ---------------
" ------------------------------------

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
