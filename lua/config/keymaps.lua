-- OIL
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })

-- neo-tree
vim.keymap.set("n", "<C-e>", "<Cmd>Neotree toggle<CR>", { desc = "Open/close file tree at navbar" })

-- diagnostics
vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

-- formatter
vim.keymap.set("n", "<leader>cf", function()
  require("conform").format({ lsp_format = "fallback" })
end, { desc = "[C]ode [F]ormat" })

-- neotest mappings (add to your keymap.lua)
-- Test
vim.keymap.set("n", "<leader>ta", function()
  require("neotest").run.attach()
end, { desc = "Attach" })

vim.keymap.set("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Run File" })

vim.keymap.set("n", "<leader>tF", function()
  require("neotest").run.run({ vim.fn.expand("%"), strategy = "dap" })
end, { desc = "Debug File" })

vim.keymap.set("n", "<leader>tl", function()
  require("neotest").run.run_last()
end, { desc = "Run Last" })

vim.keymap.set("n", "<leader>tL", function()
  require("neotest").run.run_last({ strategy = "dap" })
end, { desc = "Debug Last" })

vim.keymap.set("n", "<leader>tn", function()
  require("neotest").run.run()
end, { desc = "Run Nearest" })

vim.keymap.set("n", "<leader>tN", function()
  require("neotest").run.run({ strategy = "dap" })
end, { desc = "Debug Nearest" })

vim.keymap.set("n", "<leader>to", function()
  require("neotest").output.open({ enter = true })
end, { desc = "Output" })

vim.keymap.set("n", "<leader>tS", function()
  require("neotest").run.stop()
end, { desc = "Stop" })

vim.keymap.set("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Summary" })

vim.keymap.set("n", "<leader>tv", "<cmd>TestVisit<CR>", { desc = "Visit" })

vim.keymap.set("n", "<leader>tx", "<cmd>TestSuite<CR>", { desc = "Suite" })
