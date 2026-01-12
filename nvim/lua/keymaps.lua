local keymap = vim.keymap.set

-- Set leader
vim.g.maplocalleader = ' '
vim.g.mapleader = ' '

-- Save and quit
keymap('n', '<leader>w', ':w<CR>', { desc = 'Save' })
keymap('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

-- Better navigation
keymap('n', '<C-d>', '<C-d>zz')  -- Center after half page down
keymap('n', '<C-u>', '<C-u>zz')  -- Center after half page up

-- Window navigation
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')

-- Move lines in visual mode and normal mode
-- keymap('v', 'J', ":m '>+1<CR>gv=gv")
-- keymap('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
keymap('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
keymap('n', '<A-down>', ':m .+1<CR>==', { desc = 'Move line down' })
keymap('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
keymap('n', '<A-up>', ':m .-2<CR>==', { desc = 'Move line up' })

-- Stay in visual mode when indenting
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Clear highlights
keymap('n', '<Esc>', ':noh<CR>')
