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
  'tpope/vim-fugitive',       --Git
  'tpope/vim-sleuth',         --Keeps indenation style
  'simrat39/rust-tools.nvim', --Rust
  { 'folke/which-key.nvim',                opts = {} },
  { 'm4xshen/autoclose.nvim',              opts = {} },
  { 'numToStr/Comment.nvim',               opts = {} },
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {}, },
  { 'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },
      'folke/neodev.nvim',
    },
  },
  { 'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',             -- Snippet Engine & its associated nvim-cmp source
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',         -- Adds LSP completion capabilities
      'rafamadriz/friendly-snippets', -- Adds a number of user-friendly snippets
    },
  },
  { 'lewis6991/gitsigns.nvim',
    opts = function()
      require('plugins.configs.gitsigns').setup()
    end,
  },
  { 'RRethy/nvim-base16',
    name = 'mycolor',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'base16-tomorrow-night'
    end,
  },
  { 'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'base16',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  { 'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },
  { 'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
  require 'plugins.autoformat',
  require 'plugins.debug',
  {},
}

require('plugins.configs.telescope')
require('plugins.configs.treesitter')
require('plugins.configs.whichkey')
require('plugins.configs.lsp')
require('plugins.configs.random')
require('plugins.configs.cmp')
require('plugins.configs.rust-tools')
