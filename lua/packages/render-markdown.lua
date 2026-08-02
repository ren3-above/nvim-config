-- improves viewing markdown
-- documentation: https://github.com/MeanderingProgrammer/render-markdown.nvim/blob/main/README.md
vim.pack.add({ 'https://github.com/MeanderingProgrammer/render-markdown.nvim' })

local render = require('render-markdown') -- grab plugin

-- setup plugin
render.setup({
  enabled = true,
  render_modes = { 'n' }, -- vim modes that render will display in
  max_file_size = 8.0,    -- maximum file size that render will attempt to parse
  latex = {
    enabled = true,
    converter = { 'utftex' },
    position = 'center',
    top_pad = 0,
  },
  code = {
    language = true,       -- language heading
    position = 'left',     -- heading position
    language_icon = false, -- language icon in heading
    language_name = true,  -- language name in heading
    language_info = true,  -- language info in heading
  }
})
