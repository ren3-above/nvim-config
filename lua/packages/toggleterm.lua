-- provides persistent and simultaneous terminal buffers
-- documentation: https://github.com/akinsho/toggleterm.nvim
vim.pack.add({ 'https://github.com/akinsho/toggleterm.nvim' })

local toggleterm = require('toggleterm') -- grab plugin

-- setup plugin
toggleterm.setup({
  direction = 'float',
  float_opts = {
    border = 'curved'
  },

  autochdir = true
})
