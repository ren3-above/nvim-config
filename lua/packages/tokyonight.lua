-- neat colorscheme!
-- documentation: https://github.com/folke/tokyonight.nvim/blob/main/README.md
vim.pack.add({ 'https://github.com/folke/tokyonight.nvim' })

local tokyonight = require('tokyonight') -- grab plugin

-- setup plugin
tokyonight.setup({
  style = 'night', -- (moon, storm, night, day)
  transparent = true
})

vim.cmd('colorscheme tokyonight') -- set current colorscheme to tokyonight
