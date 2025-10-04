return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- or if using mini.icons/mini.nvim
  dependencies = { "nvim-mini/mini.icons" },
  opts = {},
  keys = {
    {
      "<leader>ff", 
      function() require('fzf-lua').files() end, 
      desc="Find files in project directory."
    },
    {
      "<leader>fg", 
      function() require('fzf-lua').live_grep() end, 
      desc="Find by grepping in project directory"
    },
    {
      "<leader>fb", 
      function() require('fzf-lua').builtin() end, 
      desc="Find available command in Fuzzyfinder"
    }
  }
}
