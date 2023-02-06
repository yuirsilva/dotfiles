vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Packer

    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    } -- Theme

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    } -- Telescope

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) -- Treesitter

    use 'theprimeagen/harpoon' -- Harpoon

    use 'mbbill/undotree' -- Undotree

    use 'tpope/vim-fugitive' -- Fugitive

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    } -- Lsp-zero

    use 'norcalli/nvim-colorizer.lua' -- Colorizer

    use 'folke/zen-mode.nvim' -- Zen-mode

    use 'kyazdani42/nvim-web-devicons' -- File icons

    use 'akinsho/nvim-bufferline.lua' -- Bufferline

    use 'lewis6991/gitsigns.nvim' -- Git signs

    use 'windwp/nvim-autopairs' -- Autopairs

    use 'windwp/nvim-ts-autotag' -- Autotags

    use 'nvim-lualine/lualine.nvim' -- Statusline

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use 'onsails/lspkind.nvim'
end)
