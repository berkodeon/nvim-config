-- OIL
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {desc="Open Parent Directory in Oil"})

-- neo-tree
vim.keymap.set('n', '<C-e>', '<Cmd>Neotree toggle<CR>', {desc="Open/close file tree at navbar"})


vim.keymap.set('n', "gl", function() vim.diagnostic.open_float() end, {desc="Open Diagnostics in Float"})


