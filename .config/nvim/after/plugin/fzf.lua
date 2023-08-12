vim.cmd([[set rtp+=/usr/local/opt/fzf]])
vim.api.nvim_set_keymap('n', '<C-p>', ':FZF<CR>', { noremap = true, silent = true })
