-- global keymap

-- constants
local split_resize_amount = 8; -- amount by which splits will be resized by

-- states
local is_harper_enabled = false

-- leader key
vim.g.mapleader = ';'

-- basics
vim.keymap.set('n', '<leader>w', ':write<CR>', { desc = 'Write to file' })
vim.keymap.set('n', '<leader>q', ':quit<CR>', { desc = 'Quit current buffer' })
vim.keymap.set('n', '<leader>rs', ':restart<CR>', { desc = 'Restart Neovim' })
vim.keymap.set({ 'n', 't' }, '<leader>a', vim.cmd.Anchor, { desc = 'Change directory to working directory' })

-- movement
vim.keymap.set('n', '<Space>', 'w', { desc = 'Alternative word' })

-- packages
vim.keymap.set('n', '<leader>u', ':lua vim.pack.update()<CR>', { desc = 'Update packages' })
vim.keymap.set('n', '<leader>e', ':Oil<CR>', { desc = 'Open file explorer' })

local function open_tasks()
  local current_directory = vim.fn.getcwd()
  vim.cmd('tcd ' .. todo_dir)
  vim.cmd('Tuxedo')
  vim.cmd('cd ' .. current_directory)
end

vim.keymap.set('n', '<leader>x', function() open_tasks() end, { desc = 'Open task manager' })

-- lsp integration
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename identifier' })
vim.keymap.set('n', '<leader>df', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', '<leader>dc', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Language format file' })
vim.keymap.set('n', '<leader>p', vim.diagnostic.open_float, { desc = 'Show full issue' })
vim.keymap.set('n', '<leader>ih', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, { desc = 'Toggle inlay hints' })

local function toggle_harper()
  if is_harper_enabled then
    vim.lsp.enable('harper_ls', false)
    is_harper_enabled = false
  else
    vim.lsp.enable('harper_ls')
    is_harper_enabled = true
  end
end

vim.keymap.set('n', '<leader>g', function() toggle_harper() end, { desc = 'Toggle deep grammar checking' })

-- terminal emulator
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', { desc = 'Open terminal buffer' })
vim.keymap.set('t', '<leader>n', [[<C-\><C-n>]], { desc = 'Enter normal mode within terminal buffer' })
vim.keymap.set('t', '<leader>e', '<C-d>', { desc = 'Exit terminal buffer' })

-- splits
vim.keymap.set('n', '<leader>vs', ':vs<CR><C-w>h', { desc = 'Create a vertical split' })
vim.keymap.set('n', '<leader>hs', ':split<CR><C-w>k', { desc = 'Create a horizontal split' })
vim.keymap.set('n', 'H', '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', 'J', '<C-w>j', { desc = 'Move to lower split' })
vim.keymap.set('n', 'K', '<C-w>k', { desc = 'Move to upper split' })
vim.keymap.set('n', 'L', '<C-w>l', { desc = 'Move to right split' })
vim.keymap.set('n', '<leader>vi', split_resize_amount .. '<C-w>>', { desc = [[Increase current split's width]] })
vim.keymap.set('n', '<leader>vd', split_resize_amount .. '<C-w><', { desc = [[Decrease current split's width]] })
vim.keymap.set('n', '<leader>hi', split_resize_amount .. '<C-w>+', { desc = [[Increase current split's height]] })
vim.keymap.set('n', '<leader>hd', split_resize_amount .. '<C-w>-', { desc = [[Decrease current split's height]] })

-- misc.
vim.keymap.set('n', '<leader>ct', 'a</><ESC>hhh%lveyh%llpl%h', { desc = 'Close markup tag' })
