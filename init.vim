lua require('basic')
lua require('keybindings')
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/telescope-fzf-native')
lua require('plugin-config/aerial')
lua require('plugin-config/lualine')
lua require('plugin-config/lspconfig')
lua require('plugin-config/nvim-lint')
lua require('plugin-config/nvim-cmp')
lua require('plugin-config/lspfuzzy')
lua require('plugin-config/hop')
set background=dark
colorscheme zephyr

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" andrew: do not use `number` which merges sign column with number column
" or sometimes sign will cover number!
set signcolumn=yes

" Config for clipboard on Windows WSL
if system('uname -r') =~ "Microsoft"
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
        augroup END
else
    " use clipboard
    set clipboard+=unnamedplus
endif

let $BAT_THEME = 'Monokai Extended'

" Mapping for Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" zzxn: Quickly Run
autocmd FileType go map <buffer> <F5> :w<CR>:exec '!go run' shellescape(@%, 1)<CR>
autocmd FileType go imap <buffer> <F5> <esc>:w<CR>:exec '!go run' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

autocmd FileType go call Go_settings()
function! Go_settings()
  setlocal smarttab
endfunction

" zzxn: for hop
nnoremap <leader>hw <cmd>HopWord<cr>
