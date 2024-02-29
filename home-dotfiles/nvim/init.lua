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
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            search = {
                command = "rg",
                args = {
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                }
            }
    	}
    },
    --
    { import = 'plugins' },

    {},
})


require('plugins.configs.lsp')
