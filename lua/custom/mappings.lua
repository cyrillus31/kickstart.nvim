-- nvim-tree
vim.keymap.set('n', '<C-n>', '<cmd> NvimTreeToggle <CR>', { desc = 'nvimtree toggle window' })
vim.keymap.set('n', '<leader>n', '<cmd> NvimTreeFocus <CR>', { desc = 'nvimtree focus window' })

-- nvterm [from NvChad]
local terminal = require 'nvterm.terminal'
local toggle_modes = { 'n', 't' }
local opts = { noremap = true, silent = true }
vim.keymap.set(toggle_modes, '<A-i>', function()
  terminal.toggle 'float'
end, opts)
vim.keymap.set(toggle_modes, '<A-v>', function()
  terminal.toggle 'vertical'
end, opts)
vim.keymap.set(toggle_modes, '<A-h>', function()
  terminal.toggle 'horizontal'
end, opts)

-- buffers
vim.keymap.set('n', '<leader>bx', '<cmd> bwipeout <CR>', { desc = 'wipeout buffer' })
vim.keymap.set('n', '<leader>bc', '<cmd> close <CR>', { desc = 'close' })
vim.keymap.set('n', '<leader>bn', '<cmd> bnext <CR>', { desc = 'go to next buffer in a list' })
vim.keymap.set('n', '<leader>bp', '<cmd> b# <CR>', { desc = 'go back to the previously opened buffer' })

-- tabse
vim.keymap.set('n', '<Tab>', '<cmd> tabnext <CR>', { desc = 'next tab' })
vim.keymap.set('n', '<S-Tab>', '<cmd> tabprevious <CR>', { desc = 'next tab' })

-- splits
vim.keymap.set('n', '<S-A-l>', ':vertical resize +5 <CR>')
vim.keymap.set('n', '<S-A-h>', ':vertical resize -5 <CR>')
vim.keymap.set('n', '<S-A-k>', ':resize +1 <CR>')
vim.keymap.set('n', '<S-A-j>', ':resize -1 <CR>')
