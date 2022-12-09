vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineContextChar guifg=gray gui=nocombine]]

require("indent_blankline").setup {
	enabled = true,

	use_treesitter = true,
	use_treesitter_scope = true,

	show_current_context = true,
	show_current_context_start = false,
	show_current_context_start_on_current_line = true,
	show_first_indent_level = true,
	show_trailing_blankline_indent = false,
	show_end_of_line = false,
	max_indent_increase = 1,
}
