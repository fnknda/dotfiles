local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

-- File Navigations
map('n', '<leader><leader>', ':Startify<CR>', { silent = true, noremap = true })
map('n', '<leader>fc', ':Telescope git_branches<CR>', { silent = true, noremap = true })
map('n', '<leader>ff', ':Telescope find_files<CR>', { silent = true, noremap = true })
map('n', '<leader>fg', ':Telescope git_files<CR>', { silent = true, noremap = true })
map('n', '<leader>fr', ':Telescope registers<CR>', { silent = true, noremap = true })
map('n', '<leader>fs', ':Telescope live_grep<CR>', { silent = true, noremap = true })
map('n', '<leader>ft', ':Telescope tags<CR>', { silent = true, noremap = true })

-- Multi-file workflow
map('n', '<leader>b', ':Telescope buffers<CR>', { silent = true, noremap = true })

-- Miscs
map('n', '<leader>x', ':noh<CR>', { silent = true, noremap = true  })
map('n', '<leader>z', ':ZenMode<CR>', { silent = true, noremap = true  })
map('n', '<C-e>', 'j<C-e>', { silent = true, noremap = true  })
map('n', '<C-y>', 'k<C-y>', { silent = true, noremap = true  })
map('n', '<C-w>-', '<C-w>_', { silent = true, noremap = true  })
map('n', '<C-w>\\', '<C-w>|', { silent = true, noremap = true  })
map('n', '<leader>=', ':Neoformat<CR>', { silent = true, noremap = true  })

