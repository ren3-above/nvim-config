-- image preview using Kitty's graphics protocol
-- documentation: https://github.com/3rd/image.nvim/blob/master/README.md
vim.pack.add({ 'https://github.com/3rd/image.nvim' })

local image = require('image') -- grab plugin
image.setup()                  -- setup plugin
