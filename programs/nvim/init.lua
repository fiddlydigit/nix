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
    { 'tpope/vim-fugitive', },                                          -- Git
    { 'tpope/vim-sleuth', },                                            -- Keeps indenation style
    { 'folke/which-key.nvim',                opts = {} },               -- Mappings cheatsheet
    { 'numToStr/Comment.nvim',               opts = {} },               -- Comments
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} }, -- Indenation
    --
    require 'plugins.lsp',                                              -- Language servers
    require 'plugins.completion',                                       -- Completion
    require 'plugins.telescope',
    require 'plugins.treesitter',
    --
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
require('plugins.configs.cmp')
