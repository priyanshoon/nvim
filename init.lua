vim.g.mapleader = " "
vim.g.maplocalleader = " "

local scrolloff = math.floor(vim.o.lines / 2) - 3
vim.opt.scrolloff = scrolloff

-- requires start
require("plugins.init")
require("config.bind")
-- requires end

vim.cmd.colorscheme("solarized")

-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.cursorline = false

-- windows
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.o.winborder = "rounded"

-- Sane tab management
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = false

-- Undo management
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Better Highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

-- Nowrap
vim.opt.wrap = false

-- Indent
vim.o.autoindent = true

-- Undotree
vim.cmd("packadd nvim.undotree")
vim.keymap.set("n", "<leader>u", require("undotree").open)

-- Local project config
vim.o.exrc = true

-- Ignore case
vim.o.ignorecase = true
vim.o.smartcase = true

-- Copy shit
-- vim.opt.clipboard = "unnamedplus"
