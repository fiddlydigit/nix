return {
    name = 'mytheme',
    priority = 1000,
    config = function()
        vim.cmd.colorscheme 'base16-tomorrow-night'
    end,
}
