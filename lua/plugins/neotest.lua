return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-plenary",
    "nvim-neotest/neotest-go",
    "haydenmeade/neotest-jest",
    "nvim-neotest/neotest-vim-test",
    "rouge8/neotest-rust",
    "vim-test/vim-test",
    "stevearc/overseer.nvim",
  },
  cmd = { "Neotest", "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
  keys = {
    -- you can also put mappings here instead of a separate which-key plugin
  },
  config = function(_, opts)
    -- base opts from lazy (if any)
    opts = opts or {}

    -- adapters
    opts.adapters = {
      require("neotest-python")({
        dap = { justMyCode = false },
        runner = "pytest",
        is_cwd_root = true,
      }),
      require("neotest-jest"),
      require("neotest-go"),
      require("neotest-plenary"),
      require("neotest-vim-test")({
        ignore_file_types = { "python", "vim", "lua" },
      }),
      require("neotest-rust"),
    }

    require("neotest").setup(opts)
  end,
}
