local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

-- Add restrictions to vim to force not to use arrow keys on

-- Insertion mode
map('i', '<up>', '<Nop>', { silent = true, noremap = true })
map('i', '<down>', '<Nop>', { silent = true, noremap = true })
map('i', '<left>', '<Nop>', { silent = true, noremap = true })
map('i', '<right>', '<Nop>', { silent = true, noremap = true })

-- Normal mode and
map('n', '<up>', '<Nop>', { silent = true, noremap = true })
map('n', '<down>', '<Nop>', { silent = true, noremap = true })
map('n', '<left>', '<Nop>', { silent = true, noremap = true })
map('n', '<right>', '<Nop>', { silent = true, noremap = true })

-- Visual mode
map('v', '<up>', '<Nop>', { silent = true, noremap = true })
map('v', '<down>', '<Nop>', { silent = true, noremap = true })
map('v', '<left>', '<Nop>', { silent = true, noremap = true })
map('v', '<right>', '<Nop>', { silent = true, noremap = true })

-- File Navigations
map('n', '<leader><leader>', ':Startify<CR>', { silent = true, noremap = true })
map('n', '<leader>fc', ':Telescope git_branches<CR>', { silent = true, noremap = true })
map('n', '<leader>ff', ':Telescope find_files<CR>', { silent = true, noremap = true })
map('n', '<leader>gd', ':Telescope lsp_definitions<CR>', { silent = true, noremap = true })
map('n', '<leader>gi', ':Telescope lsp_implementations<CR>', { silent = true, noremap = true })
map('n', '<leader>gr', ':Telescope lsp_references<CR>', { silent = true, noremap = true })
map('n', '<leader>fg', ':Telescope git_files<CR>', { silent = true, noremap = true })
map('n', '<leader>fr', ':Telescope registers<CR>', { silent = true, noremap = true })
map('n', '<leader>ft', ':Telescope tags<CR>', { silent = true, noremap = true })
map('n', '<leader>fs', ':Telescope live_grep<CR>', { silent = true, noremap = true })

-- LSP
map('n', '<leader>tt', '<cmd>TroubleToggle<cr>', { silent = true, noremap = true })
map('n', '<leader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', { silent = true, noremap = true })
map('n', '<leader>td', '<cmd>TroubleToggle document_diagnostics<cr>', { silent = true, noremap = true })
map('n', '<leader>tl', '<cmd>TroubleToggle loclist<cr>', { silent = true, noremap = true })
map('n', '<leader>tq', '<cmd>TroubleToggle quickfix<cr>', { silent = true, noremap = true })
map('n', 'gR', '<cmd>TroubleToggle lsp_references<cr>', { silent = true, noremap = true })

-- Multi-file workflow
map('n', '<leader>b', ':Telescope buffers<CR>', { silent = true, noremap = true })

-- Miscs
map('n', '<leader>x', ':noh<CR>', { silent = true, noremap = true  })
map('n', '<C-e>', 'j<C-e>', { silent = true, noremap = true  })
map('n', '<C-y>', 'k<C-y>', { silent = true, noremap = true  })
map('n', '<C-w>-', '<C-w>_', { silent = true, noremap = true  })
map('n', '<C-w>\\', '<C-w>|', { silent = true, noremap = true  })
map('n', '<leader>=', ':Neoformat<CR>', { silent = true, noremap = true  })

