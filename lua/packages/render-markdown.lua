-- improves viewing markdown
-- documentation: https://github.com/MeanderingProgrammer/render-markdown.nvim/blob/main/README.md
vim.pack.add({ 'https://github.com/MeanderingProgrammer/render-markdown.nvim' })

local render = require('render-markdown') -- grab plugin
render.setup()                            -- setup plugin
