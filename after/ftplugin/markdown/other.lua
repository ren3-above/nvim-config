-- markdown specific options

local opt              = vim.opt_local

opt.number             = false -- left side number column
opt.cursorline         = false -- highlight current line
opt.wrap               = true  -- text wraping
opt.relativenumber     = false -- relative line numbers
opt.linebreak          = true  -- break lines at spaces

-- Goyo settings

local width            = '96'  -- character width for column
local height           = '80%' -- prose screen height percentage

-- on entering a markdown file

local markdown_augroup = vim.api.nvim_create_augroup('markdown', { clear = true })

vim.api.nvim_create_autocmd('BufEnter', {
  group = markdown_augroup,
  pattern = '*.md',
  desc = 'On entering a markdown (*.md) file',
  callback = function()
    vim.cmd(':Goyo ' .. width .. 'x' .. height) -- center align text
    vim.cmd(':setlocal spell spelllang=en_us')  -- turn on spellcheck
    vim.api.nvim_win_set_cursor(0, { 1, 0 })    -- go to start of file
  end
})

vim.api.nvim_create_autocmd('BufLeave', {
  group = markdown_augroup,
  pattern = '*.md',
  desc = 'On entering a markdown (*.md) file',
  callback = function()
    vim.cmd(':Goyo!') -- exit center aligned text
  end
})
