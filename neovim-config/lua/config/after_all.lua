vim.cmd([[colorscheme torte]])

vim.cmd([[match TrailingWhitespaces /\s\+$/]])
vim.api.nvim_set_hl(0, 'TrailingWhitespaces', { bg = 'Red' })
