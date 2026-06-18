-- provides a custom status line
-- documentation: https://nvim-mini.org/mini.nvim/doc/mini-statusline.html
vim.pack.add({ 'https://github.com/nvim-mini/mini.statusline' })

local statusline = require('mini.statusline') -- grab plugin
statusline.setup()                            -- setup plugin
