local M = {}

vim.g.mapleader = " "

-- end of line
vim.keymap.set({'n','v'}, 'ö', '$')

vim.keymap.set('n', '<Leader>bg', ':BgToggle<CR>')
vim.keymap.set('n', '<Leader>ms', ':Scratch<CR>')

vim.keymap.set('n', '<Leader>S', ':source ~/.config/nvim/init.vim<CR>')

vim.keymap.set('n', '<Leader>gy', 'Goyo<CR>')

return M

