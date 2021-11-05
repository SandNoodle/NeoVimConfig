" Autocommands
autocmd CursorHold * silent call CocActionAsync('highlight')

" Fixes
set nobackup										" Disable backups per #649
set nowritebackup									" Disable backups per #649

" 	Add COC extensions
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-prettier',
	\ 'coc-tsserver',
	\ 'coc-java',
	\ 'coc-omnisharp',
	\ ]

" Fix Omnisharp duplicates by disabling problematic sources
let g:coc_sources_disable_map = { 'cs': ['cs-2', 'cs-3'] }

" Better coc-pairs behaviour

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
		\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
