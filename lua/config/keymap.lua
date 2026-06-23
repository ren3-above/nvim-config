-- keymap

-- constants
local split_resize_amount = 8; -- amount by which splits will be resized by

-- leader key
vim.g.mapleader = ';'

-- basics
vim.keymap.set('n', '<leader>w', ':write<CR>')             -- write ('w' for write)
vim.keymap.set('n', '<leader>q', ':quit<CR>')              -- quit ('q' for quit)
vim.keymap.set('n', '<leader>rs', ':restart<CR>')          -- restart neovim ('rs' for restart)
vim.keymap.set('n', '<leader>o', ':update<CR>:source<CR>') -- source file ('o' for (shout)o(ut))

-- packages
vim.keymap.set('n', '<leader>u', ':lua vim.pack.update()<CR>')            -- update packages ('u' for update)
vim.keymap.set('n', '<leader>e', ':Oil<CR>')                              -- open file explorer ('e' for explorer)
vim.keymap.set('n', '<leader>x', ':cd ' .. todo_dir .. '<CR>:Tuxedo<CR>') -- open tasks ('x' for (Tu)x(edo))

-- lsp integration
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)       -- search and replace ('rn' for r(e)n(ame))
vim.keymap.set('n', '<leader>df', vim.lsp.buf.definition)   -- goto definition ('df' for (d)e(f)inition)
vim.keymap.set('n', '<leader>dc', vim.lsp.buf.declaration)  -- goto declaration ('dc' for (d)e(c)laration)
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)       -- language format file ('lf' for l(anguage) f(ormat))
vim.keymap.set('n', '<leader>p', vim.diagnostic.open_float) -- show full issue ('p' for problem)
vim.cmd('set completeopt+=noselect')                        -- disable auto-select for omnicomplete

-- terminal emulator
vim.keymap.set('n', '<leader>t', ':lcd %:p:h<CR>:terminal<CR>i') -- enter terminal emulator ('t' for terminal)
vim.keymap.set('t', '<leader>n', [[<C-\><C-n>]])                 -- enter normal mode in terminal emulator ('n' for normal)
vim.keymap.set('t', '<leader>e', [[<C-\><C-n><C-o>]])            -- exit terminal emulator ('e' for exit)

-- splits
vim.keymap.set('n', '<leader>vs', ':vs<CR><C-w>h')                 -- create vertical split ('vs' for vertical split)
vim.keymap.set('n', '<leader>hs', ':split<CR><C-w>k')              -- create hirizontal split ('hs' for horizontal split)
vim.keymap.set('n', 'H', '<C-w>h')                                 -- move to left split ('H' for (large) left)
vim.keymap.set('n', 'J', '<C-w>j')                                 -- move to lower split ('J' for (large) down)
vim.keymap.set('n', 'K', '<C-w>k')                                 -- move to upper split ('K' for (large) up)
vim.keymap.set('n', 'L', '<C-w>l')                                 -- move to right split ('L' for (large) right)
vim.keymap.set('n', '<leader>vi', split_resize_amount .. '<C-w>>') -- increase split width ('vi' for vertical increase)
vim.keymap.set('n', '<leader>vd', split_resize_amount .. '<C-w><') -- decrease split width ('vd' for vertical decrease)
vim.keymap.set('n', '<leader>hi', split_resize_amount .. '<C-w>+') -- increase split height ('hi' for horizontal increase)
vim.keymap.set('n', '<leader>hd', split_resize_amount .. '<C-w>-') -- decrease split height ('hd' for horizontal increase)

-- misc.
vim.keymap.set('n', '<leader>ct', 'a</><ESC>hhh%lveyh%llpl%h') -- close markup tag ('ct' for close tag)
