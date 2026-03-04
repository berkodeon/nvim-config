local M = {}

function M.setup()
  require("config.lsp.on_attach").setup()
  require("config.lsp.diagnostics").setup()

  local capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities())
  local servers = require("config.lsp.servers").get()
  local ensure_installed = require("config.lsp.servers").ensure_installed(servers)

  require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

  require("mason-lspconfig").setup({
    ensure_installed = {},
    automatic_enable = false,
  })

  for server_name, server in pairs(servers) do
    server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
    vim.lsp.config(server_name, server)
    vim.lsp.enable(server_name)
  end
end

return M
