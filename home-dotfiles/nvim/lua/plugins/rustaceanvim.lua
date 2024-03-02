return {
  'mrcjkb/rustaceanvim',
  version = '^4',  -- Recommended version
  ft = { 'rust' }, -- Filetype this plugin is applied to
  config = function()
    -- Assigning the configuration table to vim.g.rustaceanvim
    vim.g.rustaceanvim = {
      -- Plugin configuration
      tools = {
        -- Add your tools configuration here
      },
      -- LSP (Language Server Protocol) configuration
      server = {
        on_attach = function(client, bufnr)
          -- Keymaps and other configurations specific to when the LSP attaches to a Rust buffer
        end,
        default_settings = {
          -- rust-analyzer language server specific configuration
          ['rust-analyzer'] = {
            -- Add your rust-analyzer configuration here
          },
        },
      },
      -- DAP (Debug Adapter Protocol) configuration
      dap = {
        -- Add your DAP configuration here
      },
    }
  end
}
