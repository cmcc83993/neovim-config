local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        'rose-pine/neovim',
        name = 'rose-pine'
    },

    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    },
    "nvim-treesitter/playground",
    "theprimeagen/harpoon",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "theprimeagen/vim-be-good",
    "towolf/vim-helm",
    "pearofducks/ansible-vim",
    "numToStr/Comment.nvim",
    "christoomey/vim-tmux-navigator",
    'szw/vim-maximizer',
    'tpope/vim-surround',
    'vim-scripts/ReplaceWithRegister',
    'jose-elias-alvarez/null-ls.nvim',
    'lervag/vimtex',
    'cohama/lexima.vim',

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'jay-babu/mason-null-ls.nvim',

            -- Autocompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip'
        }
    }

})
