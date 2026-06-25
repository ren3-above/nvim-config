-- provides various icons
-- documentation: https://github.com/nvim-mini/mini.icons/blob/main/README.md
vim.pack.add({ 'https://github.com/nvim-mini/mini.icons' })

local icons = require('mini.icons') -- grab plugin
icons.setup()                       -- setup plugin
