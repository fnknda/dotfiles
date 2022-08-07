-- Add restrictions to vim to force not to use arrow keys on

local map = vim.api.nvim_set_keymap

-- Insertion mode
map('i', '<up>', '<Nop>', { noremap = true })
map('i', '<down>', '<Nop>', { noremap = true })
map('i', '<left>', '<Nop>', { noremap = true })
map('i', '<right>', '<Nop>', { noremap = true })

-- Normal mode and
map('n', '<up>', '<Nop>', { noremap = true })
map('n', '<down>', '<Nop>', { noremap = true })
map('n', '<left>', '<Nop>', { noremap = true })
map('n', '<right>', '<Nop>', { noremap = true })

-- Visual mode
map('v', '<up>', '<Nop>', { noremap = true })
map('v', '<down>', '<Nop>', { noremap = true })
map('v', '<left>', '<Nop>', { noremap = true })
map('v', '<right>', '<Nop>', { noremap = true })

-- Personal custom mapping

-- File Navigations
map('n', '<leader><leader>', ':Startify<CR>', { noremap = true })
map('n', '<leader>fc', ':Telescope git_branches<CR>', { noremap = true })
map('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
map('n', '<leader>gd', ':Telescope lsp_definitions<CR>', { noremap = true })
map('n', '<leader>gi', ':Telescope lsp_implementations<CR>', { noremap = true })
map('n', '<leader>gr', ':Telescope lsp_references<CR>', { noremap = true })
map('n', '<leader>fg', ':Telescope git_files<CR>', { noremap = true })
map('n', '<leader>fr', ':Telescope registers<CR>', { noremap = true })
map('n', '<leader>ft', ':Telescope tags<CR>', { noremap = true })
map('n', '<leader>fs', ':Telescope live_grep<CR>', { noremap = true })

-- Git commands
map('n', '<leader>gc', ':Git commit<CR>', { noremap = true })
map('n', '<leader>gp', ':Git push<CR>', { noremap = true })
map('n', '<leader>gs', ':G<CR>', { noremap = true })
map('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })
map('n', '<leader>gj', ':diffget //3<CR>', { noremap = true })

-- Multi-file workflow
map('n', '<leader>b', ':Telescope buffers<CR>', { noremap = true })
map('n', '<leader>tl', ':tabnext<CR>', { noremap = true })
map('n', '<leader>th', ':tabprevious<CR>', { noremap = true })
map('n', '<leader>tc', ':tabnew<CR>:Explore<CR>', { noremap = true })
map('n', '<leader>td', ':tabclose<CR>', { noremap = true })

-- Miscs
map('n', '<leader>r', ':so ~/.config/nvim/init.vim<CR>', {noremap = true })
map('n', '<leader>x', ':noh<CR>', {noremap = true })
map('n', '<C-e>', 'j<C-e>', {noremap = true })
map('n', '<C-y>', 'k<C-y>', {noremap = true })
map('n', '_', '"_', {noremap = true })
map('n', '+', '"+', {noremap = true })
map('n', '<leader>xx', ':LspTroubleToggle<CR>', {noremap = true })
map('n', '<C-w>-', '<C-w>_', {noremap = true })
map('n', '<C-w>\\', '<C-w>|', {noremap = true })
map('n', '<leader>=', ':%!clang-format<CR>', {noremap = true })

-- Multi cursor
map('n', '<C-j>', '<C-Down>', {})
map('n', '<C-k>', '<C-Up>', {})

