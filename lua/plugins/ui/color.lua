vim.pack.add({
	{ src = "https://github.com/Mofiqul/vscode.nvim", name = "vscode" },
	{ src = "https://github.com/vague-theme/vague.nvim", name = "vague" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons", name = "devicons" },
	{ src = "https://github.com/craftzdog/solarized-osaka.nvim", name = "solarized-osaka" },
})

require("vague").setup({
	transparent = true,
})
