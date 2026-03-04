-- OIL
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })

-- neo-tree
vim.keymap.set("n", "<C-e>", "<Cmd>Neotree toggle<CR>", { desc = "Open/close file tree at navbar" })
vim.keymap.set("n", "<leader>r", "<Cmd>Neotree reveal<CR>", { desc = "Reveal current file in Neo-tree" })

-- diagnostics
vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

-- formatter
vim.keymap.set("n", "<leader>cf", function()
  require("conform").format({ lsp_format = "fallback" })
end, { desc = "[C]ode [F]ormat" })
