-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  lazy=false,
  config = function ()
    require('neo-tree').setup{
       filesystem = {
          filtered_items = {
            visible = true, -- when true, they will just be displayed differently than normal items
            hide_dotfiles = false,
            hide_hidden = false,
            hide_gitignored = false,
          }
      }
    }
  end,
}
