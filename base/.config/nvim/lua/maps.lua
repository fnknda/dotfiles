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
vim.api.nvim_set_keymap('n', '<leader>fc', ':Telescope git_branches<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope file_browser<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gd', ':Telescope lsp_definitions<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gi', ':Telescope lsp_implementations<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gr', ':Telescope lsp_references<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope git_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fr', ':Telescope registers<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ft', ':Telescope tags<CR>', { noremap = true })

-- Git commands
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gp', ':Git push<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gj', ':diffget //3<CR>', { noremap = true })

-- Multi-file workflow
vim.api.nvim_set_keymap('n', '<leader>b', ':Telescope buffers<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tl', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>th', ':tabprevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabnew<CR>:Explore<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>td', ':tabclose<CR>', { noremap = true })

-- Miscs
vim.api.nvim_set_keymap('n', '<leader>r', ':so ~/.config/nvim/init.vim<CR>', {noremap = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':noh<CR>', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-e>', 'j<C-e>', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-y>', 'k<C-y>', {noremap = true })
vim.api.nvim_set_keymap('n', '_', '"_', {noremap = true })
vim.api.nvim_set_keymap('n', '+', '"+', {noremap = true })
vim.api.nvim_set_keymap('n', '<leader>xx', ':LspTroubleToggle<CR>', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>-', '<C-w>_', {noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>\\', '<C-w>|', {noremap = true })
vim.api.nvim_set_keymap('n', '<leader>=', ':%!clang-format<CR>', {noremap = true })

-- Multi cursor
vim.api.nvim_set_keymap('n', '<C-j>', '<C-Down>', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-Up>', {})

