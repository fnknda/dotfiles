vim.g.rust_recomended_style = 0

vim.g['deoplete#enable_at_startup'] = 1

vim.g.submode_timeoutlen = 500

vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeSortHiddenFirst = 1
vim.g.NERDTreeSortHiddenFirst = {'\\/$', '.*', '\\.swp$',  '\\.bak$', '\\~$'}

vim.g.vim_markdown_folding_disabled = 1
vim.g.vim_markdown_folding_level = 2
vim.g.vim_markdown_conceal = 2
vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.vim_markdown_math = 1
vim.g.vim_markdown_strikethrough = 1
vim.g.vim_markdown_edit_url_in = 'tab'
vim.g.vim_markdown_follow_anchor = 1

vim.g.gruvbox_termcolors = 16
vim.g.gruvbox_invert_signs = 0
vim.g.gruvbox_invert_selection = 0

require('trouble').setup{
	icons = false,
	fold_open = "v",
	fold_closed = ">",
	indent_lines = false,
	signs = {
		error = "error",
		warning = "warn",
		hint = "hint",
		information = "info"
	},
	use_lsp_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}

vim.cmd('colorscheme gruvbox')

