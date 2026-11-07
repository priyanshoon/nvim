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
			return [["_cc]]
		else
			return bind
		end
	end, { expr = true })
end

Keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>")
Keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")

-- Oil Keymap
Keymap("n", "<leader>yv", "<cmd>Oil<CR>")

-- Fzf Lua
local builtin = require("fzf-lua")

Keymap("n", "<leader>pf", function()
	builtin.live_grep()
end)

Keymap("n", "<leader>fb", function()
	builtin.buffers({ show_all_buffers = true })
end)

Keymap("n", "<leader>ff", function()
	builtin.files({ previewer = false })
end)

Keymap("n", "<C-g>", function()
	builtin.git_files({ previewer = false })
end)

-- some additional key bindings
Keymap("n", "<C-c>", "<Esc>")
Keymap({ "n", "v" }, "<leader>y", [["+y]])
Keymap("n", "<leader>lf", function()
	vim.lsp.buf.format()
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")
