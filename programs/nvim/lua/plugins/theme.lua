return {
  'RRethy/nvim-base16',
  name = 'mycolor',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'base16-tomorrow-night'
  end,
}
