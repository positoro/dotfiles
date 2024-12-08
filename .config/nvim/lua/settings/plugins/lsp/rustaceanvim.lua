vim.keymap.set('n', 'K', vim.lsp.buf.hover, {silent=true, buffer=true})

vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    vim.lsp.buf.format({async = false})
    vim.diagnostic.set(vim.api.nvim_create_namespace('namespace_in_rust_format_and_diagnostic'), 0, {}, nil)
    vim.diagnostic.show(nil, 0, nil, nil)
  end,
  pattern = {'*.rs'},
})

vim.g.rustaceanvim = {
  tools = {
  },
  server = {
    on_attach = function(client, bufnr)
    end,
    default_settings = {
      ['rust-analyzer'] = {
        check = "clippy",
      },
    },
  },
  -- DAP configuration
  dap = {
  },
}

return {
  'mrcjkb/rustaceanvim',
  version = '^5', -- Recommended
  lazy = false, -- This plugin is already lazy
}
