vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
	view_options = {
		show_hidden = true,
	},
	lsp_file_methods = {
		enabled = true,
		timeout_ms = 1000,
		autosave_changes = true,
	},

	float = {
		max_width = 0.3,
		max_height = 0.6,
		border = "rounded",
	},
})
