vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    --use 'romainl/Apprentice'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'neovim/nvim-lspconfig'
    use 'kosayoda/nvim-lightbulb'
    use 'folke/lsp-trouble.nvim'

    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'stevearc/vim-vsnip-snippets'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
end)
