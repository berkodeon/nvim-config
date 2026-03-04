local M = {}

function M.get()
  return {
    bashls = {},
    marksman = {},
    ruff = {},
    pylsp = {
      plugins = {
        pycodestyle = { enabled = false },
        pyflakes = { enabled = false },
        pylint = { enabled = false },
        mccabe = { enabled = false },
        rope_completion = { enabled = false },
        ruff = {
          enabled = true,
          formatEnabled = true,
        },
      },
    },
    ts_ls = {},
    lua_ls = {
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace",
          },
          diagnostics = {
            globals = { "vim" },
          },
          hint = { enable = true },
        },
      },
    },
  }
end

function M.ensure_installed(servers)
  local installed = vim.tbl_keys(servers or {})
  vim.list_extend(installed, {
    "stylua",
    "prettierd",
  })
  return installed
end

return M
