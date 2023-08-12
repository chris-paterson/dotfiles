vim.opt.compatible = false
vim.opt.clipboard = "unnamed"

-- Editor
--vim.opt.syntax = "on"
vim.opt.spell = true

vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8


-- Whitespace
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftround = false
vim.opt.ai = true
vim.opt.si = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.showmatch = true

-- Last line
vim.opt.showmode = true
vim.opt.showcmd = true

vim.opt.colorcolumn = "80"

-- No annoying sound on errors
vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.tm = 500

-- Undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- YML
vim.api.nvim_command('autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab')
vim.api.nvim_command('autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab')

-- Helpers
vim.api.nvim_set_keymap('i', '<F5>', '<C-R>=strftime("%Y-%m-%d (%a)")<CR>', { noremap = true, silent = true })

