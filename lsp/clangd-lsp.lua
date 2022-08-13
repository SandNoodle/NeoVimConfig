-- Clang >= 9.0 RECOMMENDED
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.clangd.setup {
	capabilites = capabilites,
	cmd = {
		"clangd",
		"-j=4",
		"--pretty",
		"--clang-tidy",
		"--inlay-hints",
		"--background-index",
		"--pch-storage=memory",
		"--all-scopes-completion",
		"--header-insertion=never",
		"--suggest-missing-includes",
	}
}
