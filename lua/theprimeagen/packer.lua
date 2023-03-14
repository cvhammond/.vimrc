-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')
local packer_compiled = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua'
vim.cmd('luafile' .. packer_compiled)
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({ 'cvhammond/dracula.nvim/', as = 'dracula' })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
--    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("github/copilot.vim")
    use("junegunn/goyo.vim")

    use({
        "giusgad/pets.nvim",
        requires = {
            "giusgad/hologram.nvim",
            "MunifTanjim/nui.nvim",
        }
    })

    -- Grammar checker
    use({
        "dpelle/vim-LanguageTool",
        setup = function()
            vim.g.languagetool_jar = "~/Documents/LanguageTool/LanguageTool-5.9/languagetool-commandline.jar"
        end,
    })

    -- RGB colors after hex
    use({
        "RRethy/vim-hexokinase",
        run = 'make hexokinase',
        setup = function()
            vim.g.Hexokinase_highlighters = { "virtual" }
        end,
    })
end)
