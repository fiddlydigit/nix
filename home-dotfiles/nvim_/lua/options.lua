vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local options = {
  hlsearch = false,
  mouse = 'a',
  clipboard = 'unnamedplus',
  breakindent = true,
  undofile = true,
  ignorecase = true,
  smartcase = true,
  signcolumn = 'yes',
  updatetime = 250,
  timeoutlen = 300,
  completeopt = 'menuone,noselect',
  termguicolors = true,
  --
  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  expandtab = true,
  --
}

for k, v in pairs(options) do
  vim.o[k] = v
end

-- Window-local options
vim.wo.number = true
vim.wo.relativenumber = true

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})