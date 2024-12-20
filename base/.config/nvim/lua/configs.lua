-- Tabs
vim.o.cpoptions = vim.o.cpoptions .. 'I'
vim.o.smarttab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.bo.expandtab = false
vim.o.shiftwidth = 0
vim.bo.shiftwidth = 0
vim.o.tabstop = 3
vim.bo.tabstop = 3
vim.bo.textwidth = 0

-- Prettify stuff
vim.o.background = 'dark'
vim.o.cmdheight = 1
vim.o.hlsearch = true
vim.o.inccommand = 'split'
vim.o.laststatus = 3
vim.o.listchars = 'tab:|·,trail:~,extends:>,precedes:<'
vim.o.scrolloff = 3
vim.o.showcmd = true
vim.o.showmode = false
vim.wo.colorcolumn = '81'
vim.wo.conceallevel = 2
vim.wo.cursorline = true
vim.wo.foldmethod = 'marker'
vim.wo.list = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false

-- Backups and swaps
vim.o.backup = false
vim.o.hidden = true
vim.o.writebackup = false
vim.bo.swapfile = false

-- Searching
vim.o.ignorecase = true
vim.o.path = vim.o.path .. '**'
vim.o.wildmenu = true

-- Miscs
vim.o.mouse = 'a'
vim.o.lazyredraw = true
vim.o.shortmess = vim.o.shortmess .. 'F'
vim.o.spelllang = 'en_us,pt_br'
vim.o.tags = vim.o.tags .. ',$HOME'
vim.bo.fileencoding = 'utf-8'
vim.bo.omnifunc = 'syntaxcomplete#Complete'

-- Others
vim.g.netrw_banner = 0
vim.g.zig_fmt_autosave = 0
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')
vim.cmd('syntax enable')
--vim.b.did_ftplugin = 1

