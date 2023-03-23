vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- screen split
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- nvim tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

-- bufferline
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- -- coc-markdown-preview-enhanced
-- map("n", "<leader>mdp", ":CocCommand markdown-preview-enhanced.openPreview<CR>", opt)

-- lazygit.nvim
map("n", "<leader>lg", ":LazyGit<CR>", opt)

-- aerial
map('n', '<leader>t', '<cmd>AerialToggle!<CR>', opt)
