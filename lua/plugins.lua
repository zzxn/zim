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
    use {
        'neoclide/coc.nvim', 
        branch = 'release'
    }
    use {
        'lervag/vimtex', 
        ft = 'tex', opt = true,
        config = function()
            vim.g.vimtex_view_general_viewer = 'SumatraPDF'
            vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
            end
        }
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
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
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
end)
