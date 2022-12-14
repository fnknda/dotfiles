local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn['UltiSnips#Anon'](args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'ultisnips' },
	}, {
		{ name = 'buffer' },
	})
})

local lspc = require('lspconfig')
local cmp_cap = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

lspc.clangd.setup { capabilities = cmp_cap }

lspc.cmake.setup { capabilities = cmp_cap }

lspc.terraformls.setup { capabilities = cmp_cap }

lspc.pylsp.setup { capabilities = cmp_cap }

lspc.gdscript.setup{ capabilities = cmp_cap }

lspc.tsserver.setup{ capabilities = cmp_cap }

lspc.jdtls.setup {
	capabilities = cmp_cap,
	cmd = {'jdtls', '-data', vim.fn.getenv('HOME')..'/.eclipse_workspace'},
}
