function Keymap(mode, key, binding, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, key, binding, options)
end

Keymap("n", "<leader>kb", function()
	vim.cmd("bd")
	vim.cmd("echo 'Buffer deleted'")
end)

for _, bind in ipairs({ "i", "a", "A", "I" }) do
	Keymap("n", bind, function()
		if vim.fn.getline("."):match("^%s*$") then
			return [["_cc"]]
		else
			return bind
		end
	end, { expr = true })
end

Keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>")
Keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")

-- Oil Keymap
Keymap("n", "<leader>yv", "<cmd>Oil<CR>")

-- Telescope
local builtin = require("telescope.builtin")

Keymap("n", "<leader>pf", function()
	builtin.live_grep({ hidden = true })
end)

Keymap("n", "<leader>fb", function()
	builtin.buffers({ show_all_buffers = true })
end)

Keymap("n", "<leader>ff", function()
	builtin.find_files()
end)

Keymap("n", "<C-g>", function()
	builtin.git_files()
end)

-- some additional key bindings
Keymap("n", "<C-c>", "<Esc>")
Keymap("n", "<leader>lf", function()
	vim.lsp.buf.format()
end)
