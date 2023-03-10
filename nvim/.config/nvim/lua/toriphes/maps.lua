local keymap = vim.keymap

-- New tab
keymap.set('n', 'te', ':tabedit')
keymap.set('n', '<leader>to', ':tabnew<CR>')
keymap.set('n', '<leader>tx', ':tabclose<CR>')
keymap.set('n', '<leader>tn', ':tabn<CR>')
keymap.set('n', '<leader>tp', ':tabp<CR>')

keymap.set('i', 'jk', '<ESC>')
keymap.set('n', '<leader>nh', ':nohl<CR>') -- hide hilight search


