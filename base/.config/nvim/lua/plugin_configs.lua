local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Productivity
	{
		'folke/which-key.nvim',
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end
	},
	'justinmk/vim-sneak',
	'preservim/nerdcommenter',
	'sbdchd/neoformat',
	'SirVer/ultisnips',
	'tpope/vim-fugitive',
	'tpope/vim-repeat',
	'tpope/vim-surround',

	{
		'kana/vim-textobj-line',
		dependencies = { {'kana/vim-textobj-user'} }
	},

	-- Buffer management
	{
		'nvim-telescope/telescope.nvim',
		version = '0.1.4',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},

	-- Prettify
	'airblade/vim-gitgutter',
	'itchyny/lightline.vim',
	'mhinz/vim-startify',
	'morhetz/gruvbox',
	'nvim-treesitter/nvim-treesitter',

	-- LSP
	'neovim/nvim-lspconfig',

	-- AutoComplete
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-path',
	'hrsh7th/nvim-cmp',
	'quangnguyen30192/cmp-nvim-ultisnips',

	-- Miscs
	'eandrju/cellular-automaton.nvim',
	'folke/zen-mode.nvim',
})

vim.g.gruvbox_termcolors = 16
vim.g.gruvbox_invert_signs = 0
vim.g.gruvbox_invert_selection = 0
vim.opt.termguicolors = true

require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'lua', 'zig', 'vim', 'nix', 'asm' },
	highlight = {
		enable = true,
	},
}

require('zen-mode').setup {
	plugins = {
		tmux = {
			enabled = true
		},
		kitty = {
			enabled = true,
			font = "+4",
		},
	},
}

vim.g.startify_custom_header = {
"                                                                                          ",
"       .x'                         .x'                         .x'                        ",
"      .XOX,   :k0:                .XOX,   :k0:                .XOX,   :k0:                ",
"     .KX ,00K0Xlo,               .KX ,00K0Xlo,               .KX ,00K0Xlo,                ",
"    .ONK,c0NNNNNX:              .ONK,c0NNNNNX:              .ONK,c0NNNNNX:                ",
"   'XNNNNNNNNNOKNNx            'XNNNNNNNNNOKNNx            'XNNNNNNNNNOKNNx               ",
"   0NNNNNNddNNX;Nkk;           0NNNNNNddNNX;Nkk;           0NNNNNNddNNX;Nkk;              ",
"   XNNNNNNXXNNN'XXXx           XNNNNNNXXNNN'XXXx           XNNNNNNXXNNN'XXXx              ",
"   ONXxXNNNNNNN;XNNX.          ONXxXNNNNNNN;XNNX.          ONXxXNNNNNNN;XNNX.             ",
"   'X0oKNNoxNNXdNdO0.          'X0oKNNoxNNXdNdO0.          'X0oKNNoxNNXdNdO0.             ",
" ,kd::0XNNXXNNXXNKc   ;k.    ,kd::0XNNXXNNXXNKc   ;k.    ,kd::0XNNXXNNXXNKc   ;k.         ",
" Xo    'cdkOOkxl'   .co'     Xo    'cdkOOkxl'   .co'     Xo    'cdkOOkxl'   .co'          ",
" .oOkl:'..     .':kx;        .oOkl:'..     .':kx;        .oOkl:'..     .':kx;             ",
"     .,:lodxxxol;.               .,:lodxxxol;.               .,:lodxxxol;.                ",
"                                                                                    Jiji  ",
"                                                                                          ",
}

vim.cmd('colorscheme gruvbox')
