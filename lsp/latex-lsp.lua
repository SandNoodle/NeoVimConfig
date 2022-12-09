local util = require'lspconfig/util'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local bin_name = 'ltex-ls'
if vim.fn.has 'win32' == 1 then
	bin_name = bin_name .. '.bat'
end

require'lspconfig'.ltex.setup {
	capabilites = capabilites,
	cmd = { bin_name },
	filetypes = { "tex", "bib" },
	settings = {
		ltex = {
			enabled = { "latex", "tex", "bib" },
			checkFrequency = "edit",
			language = "pl",
			diagnosticSeverity="information",
			setenceCacheSize=2000,
			additionalRules = {
				enablePickyRules = true,
				motherTongue="pl"
			},
			dictionary = {},
			disableRules = {},
			hiddenFalsePositives = {},
		},
	},
}
