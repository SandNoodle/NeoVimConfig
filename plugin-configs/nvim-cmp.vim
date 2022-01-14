lua << EOF

-- Init
local lspkind = require'lspkind'
lspkind.init({
	with_text = true,
	preset = 'codicons',
})

-- FIX: Too many brackets when using completion, ex. (((((((())))))))
local autopairs = require('nvim-autopairs')
autopairs.setup ({
	check_ts = true,
	enable_check_bracket_line = false,
})

-- Setup Completion
local cmp = require'cmp'
local luasnip = require'luasnip'
cmp.setup(
{
	-- Select snippet engine
	snippet = {
		expand = function(args)
		require('luasnip').lsp_expand(args.body)
	end,
	},

	-- Select formatting options
	formatting = {
		format = function(entry,vim_item)

		vim_item.kind = lspkind.presets.default[vim_item.kind]
		vim_item.menu = ({
			buffer = "[BUF]",
			tags = "[TAG]",
			nvim_lsp = "[LSP]",
		})[entry.source.name]
		return vim_item
	end,
	},

	-- Keymapping for autocompletion
	mapping = {
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm({
			select = true,
		}),
		['<S-Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end,
		['<Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end,
		['S-Space'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close()
		}),
	},

	-- Define competion menu popups??
	completion = {
		completeopt = 'menu, menuone, noinsert',
	},

	documentation = {
		border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
	},

	-- Experimental features
	experimental = {
		ghost_text = true,
	},

	-- List sources - <shrug>
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer", keyword_length = 5 }
	})
})

-- Autopairs
local cmp_status_ok, cmp = pcall(require, "cmp")
if cmp_status_ok then
	local cmp_autopairs = require('nvim-autopairs.completion.cmp')
	cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
end

EOF
