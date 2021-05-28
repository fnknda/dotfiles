-- Add restrictions to vim to force not to use arrow keys on

-- Insertion mode
vim.api.nvim_set_keymap('i', '<up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('i', '<down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('i', '<left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('i', '<right>', '<Nop>', { noremap = true })

-- Normal mode and
vim.api.nvim_set_keymap('n', '<up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<right>', '<Nop>', { noremap = true })

-- Visual mode
vim.api.nvim_set_keymap('v', '<up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('v', '<down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('v', '<left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('v', '<right>', '<Nop>', { noremap = true })

-- Personal custom mapping

-- File Navigations
vim.api.nvim_set_keymap('n', '<leader><leader>', ':Startify<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fc', ':GBranches<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ':Files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':GFiles<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fr', ':Rg<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ft', ':Tags<CR>', { noremap = true })

-- Git commands
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gp', ':Git push<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gj', ':diffget //3<CR>', { noremap = true })

-- Multi-file workflow
vim.api.nvim_set_keymap('n', '<leader>b', ':Buffers<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tl', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>th', ':tabprevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabnew<CR>:Explore<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>td', ':tabclose<CR>', { noremap = true })

-- Miscs
vim.api.nvim_set_keymap('n', '<leader>r', ':so ~/.config/nvim/init.vim<CR>', {noremap = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':noh<CR>', {noremap = true })
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-e>', 'j<C-e>', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-y>', 'k<C-y>', {noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-a>', {noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-x>', {noremap = true })
vim.api.nvim_set_keymap('n', '_', '"_', {noremap = true })
vim.api.nvim_set_keymap('n', '+', '"+', {noremap = true })
vim.api.nvim_set_keymap('n', '<leader>xx', ':LspTroubleToggle<CR>', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>-', '<C-w>_', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>\\', '<C-w>|', {noremap = true })

-- Multi cursor
vim.api.nvim_set_keymap('n', '<C-j>', '<C-Down>', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-Up>', {})

