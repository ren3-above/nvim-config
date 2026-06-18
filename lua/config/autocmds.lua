-- simple lsp attach
local lsp = vim.api.nvim_create_augroup('lsp', {})

vim.api.nvim_create_autocmd('LspAttach', {
  group = lsp,
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end
  end
})
