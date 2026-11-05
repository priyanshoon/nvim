vim.pack.add({
	{ src = "https://github.com/Aasim-A/scrollEOF.nvim", name = "scrollEOF" },
})

require("scrollEOF").setup({
	pattern = "*",
	insert_mode = false,
	floating = true,
	disabled_filetypes = { "terminal" },
	disabled_modes = { "t", "nt" },
})
