vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

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

-- coc-go
map("n", "<A-f>", ":CocCommand editor.action.formatDocument<CR>", opt)
map("n", "<A-i>", ":CocCommand editor.action.organizeImport<CR>", opt)

-- bufferline
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- coc-markdown-preview-enhanced
map("n", "<leader>mdp", ":CocCommand markdown-preview-enhanced.openPreview<CR>", opt)

-- lazygit.nvim
map("n", "<leader>gg", ":LazyGit<CR>", opt)

-- term
map("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)

-- floating tip
map("i", "<TAB>", "pumpvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
map("i", "<S-TAB>", "pumpvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
map("i", "<CR>", "pumpvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true})

--test
-- map("n", "<leader>kk", "i", {noremap=true})
-- map("n", "<leader>ll", ":NvimTreeToggle<CR>", opt)
