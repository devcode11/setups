return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local telescope_config = require('telescope.config')
		local vimgrep_arguments = { unpack(telescope_config.values.vimgrep_arguments) }

		table.insert(vimgrep_arguments, '--hidden')
		table.insert(vimgrep_arguments, '--glob')
		table.insert(vimgrep_arguments, '!**/.git/*')

		require('telescope').setup({
			defaults = {
				vimgrep_arguments = vimgrep_arguments
			},
			pickers = {
				find_files = {
					find_command = { 'rg', '--files', '--hidden', '--glob', '!**/.git/*' },
				}
			},
		})

		local telescope_builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
	end,
}
