vim.pack.add({
  { src = "https://github.com/echasnovski/mini.nvim", name = "mini" }
})

require("mini.pairs").setup()
require("mini.ai").setup()
require("mini.cursorword").setup()

-- require("mini.indentscope").setup({ -- shows indents
-- 	symbol = "│",
-- 	draw = {
-- 		delay = 10,
-- 		animation = require("mini.indentscope").gen_animation.linear({
-- 			duration = 15,
-- 			unit = "step",
-- 			easing = "out",
-- 		}),
-- 	},
-- })

require("mini.trailspace").setup()
require("mini.move").setup({
  mappings = {
	down = "J",
	up = "K"
  }
})
