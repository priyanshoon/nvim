function ColorMyPencils(color)
	color = color or "solarized"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        'ishan9299/nvim-solarized-lua',
        name = 'solarized',
        config = function()
            ColorMyPencils('solarized')
        end
    }
}
