--------------------------------------------------
-------------------  BASICS -----------------------
--------------------------------------------------

-- Basics:
vim.opt.errorbells = false              -- Removes Error Bells
vim.opt.encoding = "utf-8"              -- Sets character encoding

-- Line numbers:
vim.opt.rnu = true                      -- Set Relative Line numbers
vim.opt.nu = true                       -- Set Line numbers at cursor

-- Indentation settings
vim.opt.shiftwidth=4                    -- governs shift behavior to be 4 spaces
vim.opt.expandtab = true                -- converts tabs into spaces
vim.opt.tabstop=4                       -- tab key equals 4 spaces visually
vim.opt.softtabstop=4
vim.opt.autoindent = true               -- copys indent level on new line
vim.opt.smartindent = true              -- Smarter indentation on ne line

-- Row and column indicators
vim.opt.colorcolumn = "80"              -- Sets a colored column at 80 chars
--highlight ColorColumn ctermbg=0 guibg=lightgrey
vim.opt.cursorline = true               -- Sets a colored row at cursor
-- highlight CursorLine ctermbg=0 guibg=lightgrey

-- Search functionality
vim.opt.hlsearch = true                 -- search highlights persist
vim.opt.incsearch = true                -- search while typing
vim.opt.ignorecase = true               -- searches are case insensitive
vim.opt.smartcase = true                -- capital letter leads to case sense

-- Scrolling and wrapping
vim.opt.scrolloff = 15                  -- number of extra lines after EOF
vim.opt.sidescroll = 15                 -- Sets number of char scrolled by
vim.opt.wrap = false                    -- disables text wrapping

-- vim background settings
vim.opt.background = "dark"             -- Sets dark background colors

vim.opt.swapfile = false                -- prevents swap files
vim.opt.backup = false                  -- prevents backup
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undo-dir"
vim.opt.undofile = true
