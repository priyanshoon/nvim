vim.pack.add({
	{ src = "https://github.com/chomosuke/typst-preview.nvim", name = "typst-preview" },
})

require("typst-preview").setup({
	invert_colors = '{"rest": "always", "image": "never"}',
})
