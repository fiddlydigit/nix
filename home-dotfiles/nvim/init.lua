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

require('lazy').setup({
    { 'tpope/vim-fugitive', },                                          -- Git
    { 'tpope/vim-sleuth', },                                            -- Keeps indenation style
    { 'folke/which-key.nvim',                opts = {} },               -- Mappings cheatsheet
    { 'numToStr/Comment.nvim',               opts = {} },               -- Comments
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} }, -- Indenation
    --
    { import = 'plugins' },

    {},
})


require('plugins.configs.lsp')