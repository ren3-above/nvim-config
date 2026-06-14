-- file explorer that lets you edit your filesystem as a buffer
-- documentation: https://github.com/stevearc/oil.nvim/blob/master/README.md
vim.pack.add({ 'https://github.com/stevearc/oil.nvim' })

local oil = require('oil') -- grab plugin
oil.setup()                -- setup plugin

