vim.pack.add({
	{ src = "https://github.com/Mofiqul/vscode.nvim", name = "vscode" },
	{ src = "https://github.com/maxmx03/solarized.nvim", name = "solarized" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons", name = "devicons" },
})

require("solarized").setup({
	transparent = {
		enabled = true,
	},
})
