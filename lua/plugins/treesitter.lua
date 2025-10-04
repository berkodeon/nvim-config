return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
			auto_install = true,
			sync_install = false,
			highlight = { 
				enable = true,
				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = { "markdown" },
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "∆", -- alt + j
					node_incremental = "∆", -- alt + j
					scope_incremental = false,
					node_decremental = "˚",
				},
			},
		})
	end
}
