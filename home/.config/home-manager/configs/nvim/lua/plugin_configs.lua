vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Productivity
	use {
		'folke/which-key.nvim',
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end
	}
	use 'justinmk/vim-sneak'
	use 'preservim/nerdcommenter'
	use 'sbdchd/neoformat'
	use 'SirVer/ultisnips'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-repeat'
	use 'tpope/vim-surround'

	use {
		'kana/vim-textobj-line',
		requires = { {'kana/vim-textobj-user'} }
	}

	-- Buffer management
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Prettify
	use 'airblade/vim-gitgutter'
	use 'itchyny/lightline.vim'
	use 'mhinz/vim-startify'
	use 'morhetz/gruvbox'
	use 'nvim-treesitter/nvim-treesitter'

	-- AutoComplete
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
	use 'quangnguyen30192/cmp-nvim-ultisnips'

	-- Miscs
	use 'eandrju/cellular-automaton.nvim'
	use 'folke/zen-mode.nvim'
end)

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

require('which-key').setup {
	triggers = "auto",
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
