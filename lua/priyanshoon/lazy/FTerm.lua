return {
    "numToStr/FTerm.nvim",
    config = function()
        require("FTerm").setup({
            dimensions = {
                height = 0.8,
                width = 0.8,
                x = 0.5,
                y = 0.5,
            },
            border = "single",
        })
        vim.keymap.set('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>')
        vim.keymap.set('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
    end,
}
