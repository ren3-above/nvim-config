-- lua_ls config
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          'vim',
          'MiniStarter',
        }
      }
    }
  }
})

-- enable language servers
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')

