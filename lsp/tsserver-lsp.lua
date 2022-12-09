-- npm install -g typescript typescript-language-server
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.tsserver.setup{
	cmd = {
		'cmd',
		'/C',
		'typescript-language-server',
		'--stdio',
	},
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	capabilities = capabilities,
	detached = false,
}
