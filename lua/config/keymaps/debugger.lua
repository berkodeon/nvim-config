local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, vim.tbl_extend("force", opts, { desc = "[D]ebug: Toggle [B]reakpoint" }))

vim.keymap.set("n", "<leader>dc", function()
  require("dap").continue()
end, vim.tbl_extend("force", opts, { desc = "[D]ebug: [C]ontinue / Start" }))

vim.keymap.set("n", "<leader>do", function()
  require("dap").step_over()
end, vim.tbl_extend("force", opts, { desc = "[D]ebug: Step [o]ver" }))

vim.keymap.set("n", "<leader>di", function()
  require("dap").step_into()
end, vim.tbl_extend("force", opts, { desc = "[D]ebug: Step [I]nto" }))

vim.keymap.set("n", "<leader>dO", function()
  require("dap").step_out()
end, vim.tbl_extend("force", opts, { desc = "[D]ebug: Step [O]ut" }))

vim.keymap.set("n", "<leader>dq", function()
  require("dap").terminate()
end, vim.tbl_extend("force", opts, { desc = "[D]ebug: [Q]uit / Terminate" }))

vim.keymap.set("n", "<leader>du", function()
  require("dapui").toggle()
end, vim.tbl_extend("force", opts, { desc = "[D]ebug: Toggle [U]I" }))
