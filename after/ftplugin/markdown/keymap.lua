-- markdown specific bindings

vim.api.nvim_buf_set_keymap(0, 'n', '<leader>q', ':Goyo!<CR>:q<CR>', { desc = 'Exit buffer' })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>f', 'z=', { desc = 'Open spellcheck dialogue' })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>a', 'zg', { desc = 'Add word to dictionary' })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>r', 'zw', { desc = 'Remove word from dictionary' })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>n', ']s', { desc = 'Move to next mispelled word' })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>c', 'g<C-g>', { desc = 'Display word count' })

-- nvim_buf_set_keymap does not take a table for modes, unfortunately
vim.api.nvim_buf_set_keymap(0, 'n', 'j', 'gj', { desc = 'Move down one visual line' })
vim.api.nvim_buf_set_keymap(0, 'v', 'j', 'gj', { desc = 'Move down one visual line' })

vim.api.nvim_buf_set_keymap(0, 'n', 'k', 'gk', { desc = 'Move up one visual line' })
vim.api.nvim_buf_set_keymap(0, 'v', 'k', 'gk', { desc = 'Move up one visual line' })

vim.api.nvim_buf_set_keymap(0, 'n', 'gg', 'gg0', { desc = 'Move to start of file' })
vim.api.nvim_buf_set_keymap(0, 'v', 'gg', 'gg0', { desc = 'Move to start of file' })

vim.api.nvim_buf_set_keymap(0, 'n', 'G', 'G$', { desc = 'Move to end of file' })
vim.api.nvim_buf_set_keymap(0, 'v', 'G', 'G$', { desc = 'Move to end of file' })
