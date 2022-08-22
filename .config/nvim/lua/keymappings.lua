vim.g.mapleader = " "

local map = vim.keymap

-- end of line
map.set({'n','v'}, 'ö', '$')

map.set('n', '<Leader>bg', require('tools').toggleBackground)
map.set('n', '<Leader>ms', require('tools').makeScratch)

map.set('n', '<Leader>S', ':source ~/.config/nvim/init.lua<CR>')
map.set('n', '<Leader>so', ':so %<CR>')

map.set('n', '<Leader>gy', ':Goyo<CR>')

----------------
-- Telescope
----------------
map.set('n', '<Leader>ff', ':Telescope find_files<cr>')
map.set('n', '<Leader>fg', ':Telescope live_grep<cr>')
map.set('n', '<Leader>fb', ':Telescope buffers<cr>')
map.set('n', '<Leader>fh', ':Telescope help_tags<cr>')

