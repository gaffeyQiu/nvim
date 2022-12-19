local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
	clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

-- nvim-tree 自动关闭
autocmd("BufEnter", {
	nested = true,
	group = myAutoGroup,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
			vim.cmd("quit")
		end
	end,
})

-- 自动切换输入法，需要安装 im-select
-- https://github.com/daipeihust/im-select
-- autocmd("InsertLeave", {
-- 	group = myAutoGroup,
-- 	callback = require("core.im-select").macInsertLeave,
-- })
-- autocmd("InsertEnter", {
-- 	group = myAutoGroup,
-- 	callback = require("core.im-select").macInsertEnter,
-- })
