vim.pack.add({
	{ src = "https://github.com/Aasim-A/scrollEOF.nvim", name = "scrollEOF" },
})

require("scrollEOF").setup({
	patters = "*",
	insert_mode = false,
	floating = true,
	disabled_filesystem = { "terminal" },
	disabled_modes = { "t", "nt" },
})
