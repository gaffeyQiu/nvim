-- import comment plugin safely
local setup, specs = pcall(require, "specs")
if not setup then
	print("specs not found")
	return
end

specs.setup({
	show_jumps = true,
	min_jump = 10,
	popup = {
		delay_ms = 0, -- delay before popup displays
		inc_ms = 60, -- time increments used for fade/resize effects
		blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
		width = 10,
		winhl = "PMenu",
		fader = require("specs").sinus_fader,
		resizer = require("specs").shrink_resizer,
	},
	ignore_filetypes = {},
	ignore_buftypes = {
		nofile = true,
	},
})
