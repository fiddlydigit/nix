require 'options'
require 'mappings'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    'tpope/vim-fugitive',                                 --Git
    'tpope/vim-sleuth',                                   --Keeps indenation style
    { 'folke/which-key.nvim',                opts = {} }, --Mappings cheatsheet
    { 'm4xshen/autoclose.nvim',              opts = {} }, --Brackets and such
    { 'numToStr/Comment.nvim',               opts = {} }, --Comments
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl',                                             opts = {} },
    { 'neovim/nvim-lspconfig',               dependencies = require('plugins.dependencies.lsp'), },
    { 'hrsh7th/nvim-cmp',                    dependencies = require('plugins.dependencies.cmp'), },
    { 'nvim-telescope/telescope.nvim',       dependencies = require('plugins.dependencies.telescope'), branch = '0.1.x', },
    { 'nvim-treesitter/nvim-treesitter', dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects', }, build = ':TSUpdate',
    },
    require 'plugins.configs.gitsigns',
    require 'plugins.configs.theme',
    require 'plugins.configs.lualine',
    require 'plugins.configs.autoformat',
    require 'plugins.configs.debug',
    {},
}

require('plugins.configs.telescope')
require('plugins.configs.treesitter')
require('plugins.configs.whichkey')
require('plugins.configs.lsp')
require('plugins.configs.random')
require('plugins.configs.cmp')
