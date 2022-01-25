-- NERDTree
vim.api.nvim_set_keymap('n', '<C-S>', ':NERDTreeFocus<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-B>', ':NERDTreeToggle<CR>', { silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { silent = true })
