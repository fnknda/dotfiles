vim.o.completeopt = 'menuone,noinsert,noselect'
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

require('lspconfig').clangd.setup{ on_attach = require'completion'.on_attach; }
