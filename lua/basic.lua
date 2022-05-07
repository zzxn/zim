-- Basic config for vim
-- See https://zhuanlan.zhihu.com/p/434731678

vim.g.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.cursorline = true

vim.o.signcolumn = 'yes'
vim.wo.signcolumn = 'yes'

vim.wo.colorcolumn = "120"

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.hlsearch = true -- TODO
vim.o.incsearch = true

vim.o.showmode = true -- TODO: use false

vim.o.cmdheight = 2

vim.o.autoread = true
vim.bo.autoread = true

vim.o.wrap = true -- TODO: doubt
vim.wo.wrap = true

vim.o.hidden = true -- TODO: what??

vim.o.mouse = 'a'

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false -- TODO: why disable this???

vim.o.updatetime = 300
vim.o.timeoutlen = 350 -- TODO

vim.o.splitbelow = true
vim.o.splitright = true

vim.g.completeopt = 'menu,menuone,noselect,noinsert' -- TODO: what??



vim.o.wildmenu = true

vim.o.shortmess = vim.o.shortmess .. 'c' -- TODO: what??
vim.o.pumheight = 10

vim.o.showtabline = 4

vim.opt.termguicolors = true

vim.highlight.on_yank({higroup="IncSearch", timeout="300"})
