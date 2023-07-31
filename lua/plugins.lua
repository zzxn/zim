return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'glepnir/zephyr-nvim'
    use 'tpope/vim-commentary'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- use {
    --     'neoclide/coc.nvim',
    --     branch = 'release'
    -- }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use {
        'lervag/vimtex',
        ft = 'tex', opt = true,
        config = function()
            vim.g.vimtex_view_general_viewer = 'SumatraPDF'
            vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
        end
    }
    use { 'SirVer/ultisnips',
        requires = { { 'honza/vim-snippets', rtp = '.' } },
        config = function()
            vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
            vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
            vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
            vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
            vim.g.UltiSnipsRemoveSelectModeMappings = 0
        end
    }
    -- use {
    --     'SirVer/ultisnips',
    --     ft = 'tex', opt = true
    -- }
    use 'junegunn/fzf'
    -- Note: fzf.vim enables preview in the window for gr, gd, etc...
    -- You can install bat for syntax-highlighted preview
    use 'junegunn/fzf.vim'
    use { 'ibhagwan/fzf-lua',
        -- optional for icon support
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use 'kdheepak/lazygit.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'stevearc/aerial.nvim'
    }
    use {
        'dhruvasagar/vim-table-mode'
    }
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use { 'mfussenegger/nvim-lint' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'quangnguyen30192/cmp-nvim-ultisnips' }
    use {
        'ojroques/nvim-lspfuzzy',
        requires = {
            { 'junegunn/fzf' },
            { 'junegunn/fzf.vim' }, -- to enable preview (optional)
        },
    }
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup{
                current_line_blame = true
            }
        end
    }
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end
    }
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
end)
