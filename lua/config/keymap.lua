-- keymap
vim.g.mapleader = ';'                                                     -- leader key

vim.keymap.set('n', '<leader>w', ':write<CR>')                            -- write
vim.keymap.set('n', '<leader>q', ':quit<CR>')                             -- quit
vim.keymap.set('n', '<leader>t', ':lcd %:p:h<CR>:terminal<CR>i')          -- enter terminal emulator
vim.keymap.set('t', '<leader>n', [[<C-\><C-n>]])                          -- enter normal mode in terminal emulator
vim.keymap.set('t', '<leader>e', '<C-d>')                                 -- exit terminal emulator
vim.keymap.set('n', '<leader>rs', ':restart<CR>')                         -- restart neovim
vim.keymap.set('n', '<leader>o', ':update<CR>:source<CR>')                -- source file
vim.keymap.set('n', '<leader>e', ':Oil<CR>')                              -- open file explorer
vim.keymap.set('n', '<leader>x', ':cd ' .. todo_dir .. '<CR>:Tuxedo<CR>') -- open tasks

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)                     -- search and replace
vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition)                  -- goto definition
vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration)                 -- goto declaration
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)                     -- language format file
vim.cmd('set completeopt+=noselect')                                      -- disable auto-select for omnicomplete

vim.keymap.set('n', '<leader>pu', ':lua vim.pack.update()<CR>')           -- update packages

vim.keymap.set('n', '<leader>vs', ':vs<CR><C-w>h')                        -- create vertical split
vim.keymap.set('n', '<leader>sp', ':split<CR><C-w>k')                     -- create hirizontal split
vim.keymap.set('n', 'H', '<C-w>h')                                        -- move to right split
vim.keymap.set('n', 'J', '<C-w>j')                                        -- move to lower split
vim.keymap.set('n', 'K', '<C-w>k')                                        -- move to upper split
vim.keymap.set('n', 'L', '<C-w>l')                                        -- move to left split

