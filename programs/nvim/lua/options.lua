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
}

for k, v in pairs(options) do
  vim.o[k] = v
end

-- Window-local options
vim.wo.number = true
vim.wo.relativenumber = true
