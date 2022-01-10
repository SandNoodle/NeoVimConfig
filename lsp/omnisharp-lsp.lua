local pid = vim.fn.getpid()

-- TODO: Linux Setup
-- local omnisharp_bin = "/path/to/omnisharp-repo/run"
-- Windows
local omnisharp_bin = "C:/Users/Chris/AppData/Local/nvim/lsp/bin/omnisharp/OmniSharp.exe"
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.omnisharp.setup{
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
	capabilities = capabilities,
}
