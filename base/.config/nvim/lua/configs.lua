-- Tabs
vim.o.smarttab = true
vim.o.cpoptions = vim.o.cpoptions .. "I"
vim.bo.tabstop = 3
vim.bo.shiftwidth = 0
vim.bo.textwidth = 0
vim.bo.cindent = true
vim.bo.autoindent = false
vim.bo.expandtab = false

-- Prettify stuff
vim.o.listchars = "tab:|·,trail:~,extends:>,precedes:<"
vim.o.background = "dark"
vim.o.scrolloff = 3
vim.o.showmode = false
vim.o.showcmd = true
vim.o.hlsearch = true
vim.o.laststatus = 2
vim.wo.wrap = true
vim.wo.list = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = "81"
vim.wo.conceallevel = 2
vim.wo.foldmethod = "marker"

-- Backups and swaps
vim.o.backup = false
vim.o.writebackup = false
vim.o.hidden = true
vim.bo.swapfile = false

-- Searching
vim.o.ignorecase = true
vim.o.path = vim.o.path .. "**"
vim.o.wildmenu = true

-- Miscs
vim.o.lazyredraw = true
vim.o.shortmess = vim.o.shortmess .. "F"
vim.o.tags = vim.o.tags .. ",$HOME"
vim.bo.fileencoding = "utf-8"
vim.bo.spelllang = "en_us,pt_br"
vim.bo.omnifunc = "syntaxcomplete#Complete"
vim.o.termguicolors = true

-- Others
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')
vim.cmd('syntax enable')
vim.g.netrw_banner = 0

