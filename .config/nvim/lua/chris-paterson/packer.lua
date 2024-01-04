-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'itchyny/lightline.vim'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'

    use 'fatih/vim-go'

    -- Themes
    use 'morhetz/gruvbox'

    -- VimWiki
    use {
        'vimwiki/vimwiki',
        config = function()
            vim.g.vimwiki_list = {
                {
                    path = '~/Notes/work',
                    syntax = 'markdown',
                    ext = '.md'
                }
            }

            vim.g.vimwiki_key_mappings.table_mappings = 0
        end
    }

    -- Fuzzy search
    --use {'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use 'junegunn/fzf.vim'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use 'sbdchd/neoformat' -- prettier
end)
