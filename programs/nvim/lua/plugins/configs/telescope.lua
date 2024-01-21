local telescope = require('telescope')

telescope.setup {
	defaults = {
		mappings = {
			i = {
				['<C-u>'] = false,
				['<C-d>'] = false,
			},
		},
	},
}

-- Enable telescope fzf native, if installed
pcall(telescope.load_extension, 'fzf')

local builtin = require('telescope.builtin')
-- Telescope keymaps
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = 'Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
	builtin.current_buffer_fuzzy_find(telescope.themes.get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = 'Search in current buffer' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
