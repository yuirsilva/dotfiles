return {
    'theprimeagen/harpoon',         -- THE NAME?

    'mbbill/undotree',              -- Undotree

    'tpope/vim-fugitive',           -- Fugitive

    'norcalli/nvim-colorizer.lua',  -- Colorizer

    'folke/zen-mode.nvim',          -- Zen-mode

    'kyazdani42/nvim-web-devicons', -- File icons

    'akinsho/nvim-bufferline.lua',  -- Bufferline

    'lewis6991/gitsigns.nvim',      -- Git signs

    'windwp/nvim-autopairs',        -- Autopairs

    'windwp/nvim-ts-autotag',       -- Autotags

    'nvim-lualine/lualine.nvim',    -- Statusline

    'onsails/lspkind.nvim',         -- Lspkind

    'manzeloth/live-server',        -- Live server for basic web

    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    }, -- Telescope

    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        end,
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    },                                          -- Lsp-zero

    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }, -- Comment...

    { 'rose-pine/neovim', as = 'rose-pine' },

}
