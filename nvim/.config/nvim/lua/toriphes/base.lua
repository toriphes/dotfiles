vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.o.mouse = 'a'
vim.o.ignorecase = true
vim.o.smartcase = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backup = false
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.wildignore:append { '*/node_modules/*' }

-- macos
vim.opt.clipboard:append { 'unnamedplus' }

-- hightlights
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

vim.cmd [[colorscheme onedark]]
vim.o.completeopt = 'menuone,noselect'
