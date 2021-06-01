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

vim.g.comfortable_motion_friction = 130.0
vim.g.comfortable_motion_air_drag = 2.2

vim.g.completion_enable_snippet = 'UltiSnips'


require('trouble').setup {
	icons = false,
	fold_open = "v",
	fold_closed = ">",
	indent_lines = true,
	signs = {
		error = "error",
		warning = "warn",
		hint = "hint",
		information = "info"
	},
	use_lsp_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}

require('nvim-treesitter.configs').setup {
	ensure_installed = "maintained",
	highlight = {
		enable = true,
	},
}

vim.g.startify_custom_header = {
' ',
'       .x\'                         .x\'                         .x\'                     ',
'      .XOX,   :k0:                .XOX,   :k0:                .XOX,   :k0:                ',
'     .KX ,00K0Xlo,               .KX ,00K0Xlo,               .KX ,00K0Xlo,                ',
'    .ONK,c0NNNNNX:              .ONK,c0NNNNNX:              .ONK,c0NNNNNX:                ',
'   \'XNNNNNNNNNOKNNx            \'XNNNNNNNNNOKNNx            \'XNNNNNNNNNOKNNx            ',
'   0NNNNNNddNNX;Nkk;           0NNNNNNddNNX;Nkk;           0NNNNNNddNNX;Nkk;              ',
'   XNNNNNNXXNNN\'XXXx           XNNNNNNXXNNN\'XXXx           XNNNNNNXXNNN\'XXXx           ',
'   ONXxXNNNNNNN;XNNX.          ONXxXNNNNNNN;XNNX.          ONXxXNNNNNNN;XNNX.             ',
'   \'X0oKNNoxNNXdNdO0.          \'X0oKNNoxNNXdNdO0.          \'X0oKNNoxNNXdNdO0.          ',
' ,kd::0XNNXXNNXXNKc   ;k.    ,kd::0XNNXXNNXXNKc   ;k.    ,kd::0XNNXXNNXXNKc   ;k.         ',
' Xo    \'cdkOOkxl\'   .co\'     Xo    \'cdkOOkxl\'   .co\'     Xo    \'cdkOOkxl\'   .co\' ',
' .oOkl:\'..     .\':kx;        .oOkl:\'..     .\':kx;        .oOkl:\'..     .\':kx;       ',
'     .,:lodxxxol;.               .,:lodxxxol;.               .,:lodxxxol;.                ',
'                                                                                    Jiji  ',
' ',
}


vim.cmd('colorscheme gruvbox')
