local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "find files" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "grep" })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<cr>", { desc = "[f]ind [t]odos" })
