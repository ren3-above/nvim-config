-- provides a collection of queries for various languages in neovim
-- documentation: https://github.com/nvim-treesitter/nvim-treesitter/blob/main/README.md
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

local treesitter = require('nvim-treesitter') -- grab plugin

-- install parsers
treesitter.install {
  'c',
  'cpp',
  'rust',
  'lua',
}
