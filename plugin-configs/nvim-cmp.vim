lua << EOF

-- Init lspkind
local lspkind = require('lspkind')

-- FIX: Too many brackets when using completion, ex. (((((((())))))))
local autopairs = require('nvim-autopairs')
autopairs.setup ({
	check_ts = true,
	enable_check_bracket_line = false,
})

-- Setup Completion
local cmp = require('cmp')
local luasnip = require('luasnip')
cmp.setup(
{
	-- Select snippet engine
	snippet = {
		expand = function(args)
		luasnip.lsp_expand(args.body)
	end,
	},

	window = {
		completion = {
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
			col_offset = -3,
			side_padding = 0,
		},
		documentation = cmp.config.window.bordered(),
		max_height=24,
		max_width=128,
		winhighlight="FloatBorder:NormalFloat",
	},

	-- Select formatting options
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
		local kind = lspkind.cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
		local strings = vim.split(kind.kind, "%s")
			kind.kind = " " .. strings[1] .. " "
			kind.menu = "    (" .. strings[2] .. ")"
			return kind
		end,
	},
	 symbol_map = {
		  Text = "",
		  Method = "",
		  Function = "",
		  Constructor = "",
		  Field = "ﰠ",
		  Variable = "",
		  Class = "ﴯ",
		  Interface = "",
		  Module = "",
		  Property = "ﰠ",
		  Unit = "塞",
		  Value = "",
		  Enum = "",
		  Keyword = "",
		  Snippet = "",
		  Color = "",
		  File = "",
		  Reference = "",
		  Folder = "",
		  EnumMember = "",
		  Constant = "",
		  Struct = "פּ",
		  Event = "",
		  Operator = "",
		  TypeParameter = ""
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

	-- Experimental features
	experimental = {
		ghost_text = true,
	},

	-- List sources - <shrug>
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "treesitter" },
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
