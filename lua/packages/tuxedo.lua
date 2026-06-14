-- provides a window wrapper for the tuxedo tui application
-- documentation: https://github.com/IogaMaster/tuxedo.nvim/blob/main/README.md
--                https://github.com/webstonehq/tuxedo/blob/main/README.md
vim.pack.add({ 'https://github.com/IogaMaster/tuxedo.nvim' })

local statusline = require('tuxedo') -- grab plugin

-- setup plugin
statusline.setup({
  create_todo_file = false, -- automatically open/create sibling todo.txt?
  width_ratio = 0.9,        -- width of window in % of parent window width
  height_rator = 0.8,       -- height of window in % of parent window height
})
