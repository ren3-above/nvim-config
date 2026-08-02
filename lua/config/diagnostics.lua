--- diagnostics config
vim.diagnostic.config({
  signs            = true, -- signs in left hand sign column
  underline        = true, -- underline where there is an issue
  update_in_insert = true, -- update diagnostics while in insert mode
  virtual_text     = true, -- show message in line
  severity_sort    = true  -- sort diagnostics by serverity
})
