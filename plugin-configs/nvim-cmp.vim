lua << EOF
local cmp = require'cmp'

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local luasnip = require'luasnip'
local lspkind = require'lspkind'

require 'cmp_nvim_lsp'

-- Init
lspkind.init({
	with_text = true,
	preset = 'codicons',
})

-- Setup Completion
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
require('nvim-autopairs').setup ({
	enable_check_bracket_line = false, -- if next character is unclosed pair, then don't insert new pair.
})
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))

EOF
