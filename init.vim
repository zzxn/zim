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
lua require('plugin-config/hop')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/nvim-ufo')
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
" fo: find grep for golang
nnoremap <leader>fo <cmd>Telescope live_grep glob_pattern=*.{go,sql,md} glob_pattern=!*_test.go<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap gr <cmd>Telescope lsp_references show_line=false include_delaration=false<cr>
nnoremap gd <cmd>Telescope lsp_definitions show_line=false<cr>
nnoremap gi <cmd>Telescope lsp_implementations show_line=false<cr>
nnoremap S <cmd>Telescope spell_suggest<cr>


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

" " https://www.reddit.com/r/neovim/comments/psl8rq/sexy_folds/
" set fillchars=fold:\ 
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
" " set foldtext=getline(v:foldstart).'...'.trim(getline(v:foldend))
" set foldtext=substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend))
set foldnestmax=3
" set foldminlines=1
