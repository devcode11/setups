
-- Leader mapping
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- END


-- Basic options
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
-- vim.opt.expandtab = true
-- vim.opt.shiftwidth = 4
vim.opt.hlsearch = false
-- vim.opt.visualbell = false

vim.api.nvim_create_user_command('Trims', [[%s/\s\+$//e]], {})
vim.api.nvim_create_user_command('W', 'w', {})

-- Language servers
vim.keymap.set('', '<space>e', function() vim.diagnostic.open_float(0, { scope = 'line' }) end)

vim.g.netrw_winsize = 20

vim.opt.mouse = ''
-- END
