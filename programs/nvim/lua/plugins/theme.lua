return {
  'aktersnurra/no-clown-fiesta.nvim',
  name = 'mycolor',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'no-clown-fiesta'
  end,
}
