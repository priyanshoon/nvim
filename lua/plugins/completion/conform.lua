vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim", name = "conform" },
	{ src = "https://github.com/mfussenegger/nvim-lint", name = "lint" },
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		typescriptreact = { "prettier" },
		typescript = { "prettier" },
		html = { "prettier" },
		python = { "black" },
		nix = { "alejandra" },
		css = { "prettier" },
		rust = { "rustfmt" },
		go = { "gofumpt" },
	},
	format_on_save = true,
	undojoin = true,
})
