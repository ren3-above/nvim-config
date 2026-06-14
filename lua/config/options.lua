-- editor options
local opt          = vim.opt

-- misc.
opt.number         = true  -- left side number column
opt.cursorline     = true  -- highlight current line
opt.wrap           = false -- text wraping
opt.scrolloff      = 8     -- minimum number of lines above/below cursor

-- indentation
opt.tabstop        = 2     -- <TAB> width
opt.shiftwidth     = 2     -- indent width
opt.expandtab      = true  -- convert tabs to spaces
opt.smartindent    = false -- smart auto-indentation
opt.autoindent     = false -- copy indentation from current line

-- search
opt.ignorecase     = true  -- case insensitive search
opt.smartcase      = true  -- case sensitive search if uppercase given
opt.hlsearch       = false -- hightlight search results
opt.incsearch      = true  -- show matches as you type

-- visuals
opt.relativenumber = true                    -- relative line numbers
opt.termguicolors  = true                    -- enable 24-bit colors
opt.signcolumn     = 'yes'                   -- left side sign column
opt.showmatch      = false                   -- highlight matching brackets
opt.matchtime      = 1                       -- how long to highlight brackets
opt.cmdheight      = 1                       -- command line height
opt.showmode       = true                    -- show mode in command line
opt.pumheight      = 8                       -- pop-up menu height
opt.pumblend       = 24                      -- pop-up menu transparency (0 - 100)
opt.winblend       = 16                      -- floating window transparency (0 - 100)
opt.completeopt    = 'menu,menuone,noselect' -- show menu of completion options
opt.conceallevel   = 3                       -- conceal hidden text, i.e. .md (0 - 3)
opt.concealcursor  = 'n'                     -- which modes will conceal text on current line
opt.confirm        = true                    -- ask for confirmation when exiting unsaved buffer
opt.list           = true                    -- show some whitespace characters (<TAB>, trailing spaces)
opt.synmaxcol      = 400                     -- syntax highlighting limit
opt.ruler          = false                   -- cursor line & column
opt.virtualedit    = 'block'                 -- allow cursor to move where there is not text in visual block mode
opt.winminwidth    = 8                       -- minimum window width
opt.winborder      = 'rounded'               -- window type

-- file handling
opt.backup         = false -- create backup files
opt.writebackup    = false -- create backups before writing
opt.swapfile       = false -- swap files
opt.undofile       = true  -- persistent undo
opt.undolevels     = 800   -- how many changes are tracked
opt.updatetime     = 10000 -- how long to wait while idle before saving (ms)
opt.autoread       = true  -- auto reload files if changed outside neovim
opt.autowrite      = true  -- auto save files

-- clipboard
opt.clipboard      = 'unnamedplus' -- sync with system clipboard

-- splits
opt.splitbelow     = true     -- where horizontal splits open
opt.splitright     = true     -- where vertical splits open
opt.splitkeep      = 'screen' -- scroll behaviour on split opening

