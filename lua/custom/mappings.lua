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
