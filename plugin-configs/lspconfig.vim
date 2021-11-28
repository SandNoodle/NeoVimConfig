" Keybinds
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> dr <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> [g <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]g <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> F <cmd>lua vim.lsp.buf.formatting()<CR>

" Autoformatting
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.cs lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.cpp lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.h lua vim.lsp.buf.formatting_sync(nil, 100)

" Misc
hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red

" Language servers
luafile ~/Appdata/Local/nvim/lsp/tsserver-lsp.lua
luafile ~/Appdata/Local/nvim/lsp/omnisharp-lsp.lua
luafile ~/Appdata/Local/nvim/lsp/clangd-lsp.lua

