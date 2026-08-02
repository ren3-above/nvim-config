-- provides a custom start menu
-- documentation: https://nvim-mini.org/mini.nvim/doc/mini-starter.html
vim.pack.add({ 'https://github.com/nvim-mini/mini.starter' })

-- item template
--{ name = 'name', action = 'action', section = 'section' },

local pinned_items = {
  { name = 'Tasks',         action = 'cd ' .. todo_dir .. ' | Tuxedo',      section = 'Pinned Items' },
  { name = 'Documents',     action = 'e ~/docs',                            section = 'Pinned Items' },
  { name = 'Source',        action = 'e ~/src',                             section = 'Pinned Items' },
  { name = 'Neovim Config', action = 'e ~/.config/nvim',                    section = 'Pinned Items' },
  { name = 'srcML Tests',   action = 'e ~/src/srcML/test/parser/testsuite', section = 'Pinned Items' },
  { name = 'Grammars',      action = 'e ~/src/grammars',                    section = 'Pinned Items' },
}

-- gets the current time and date
local function get_time_and_date()
  return os.date('Local Time: %H.%M | Current Date: %d-%m-%Y')
end

-- sets footer to include time, date, and seconds elapsed since opening the editor
local set_footer = (function()
  local timer = vim.loop.new_timer()
  timer:start(0, 10000, vim.schedule_wrap(function()
    if vim.bo.filetype ~= 'ministarter' then
      timer:stop()
      return
    end
    MiniStarter.refresh()
  end))

  return function()
    return get_time_and_date()
  end
end)()

local starter = require('mini.starter') -- grab plugin

-- setup plugin
starter.setup({
  header = table.concat({
    [[                                                                       .--.   ]],
    [[                                                                      |o_o |  ]],
    [[ __   __     ______     ______     __   __   __     __    __          |:_/ |  ]],
    [[/\ "-.\ \   /\  ___\   /\  __ \   /\ \ / /  /\ \   /\ "-./  \        //   \ \ ]],
    [[\ \ \-.  \  \ \  __\   \ \ \/\ \  \ \ \'/   \ \ \  \ \ \-./\ \      (|     | )]],
    [[ \ \_\\"\_\  \ \_____\  \ \_____\  \ \__|    \ \_\  \ \_\ \ \_\    /'\_   _/`\]],
    [[  \/_/ \/_/   \/_____/   \/_____/   \/_/      \/_/   \/_/  \/_/    \___)=(___/]],
    [[]],
    [[Welcome back.]],
  }, '\n'),

  footer = set_footer,

  items = {
    pinned_items,
    starter.sections.recent_files(16), -- (# of files, in only current directory?, show path?)
    starter.sections.builtin_actions(),
  },
})
