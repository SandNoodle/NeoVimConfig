local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- TODO: Linux Setup
-- Windows
local sumneko_lua_bin = "C:/Users/Chris/AppData/Local/nvim/lsp/bin/sumneko_lua/win64/bin/lua-language-server.exe"
require'lspconfig'.sumneko_lua.setup {
	capabilites = capabilites,
	cmd = { sumneko_lua_bin },
	settings = {
		Lua = {
			telemetry = {
				enable = false,
			},
		},
	},
}
