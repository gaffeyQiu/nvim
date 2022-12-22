require("plugins-setup")
require("autocmds")
-- basic
require("core.options")
require("core.keymaps")
require("core.colorscheme")

require("plugins.comment")
require("plugins.project")
require("plugins.dashboard")
require("plugins.lastplace")

require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.toggleterm")
require("plugins.telescope")
require("plugins.nvim-cmp")
require("plugins.autopairs")
require("plugins.treesitter")
require("plugins.gitsigns")
require("plugins.bufferline")
require("plugins.blackline")

-- lsp
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")
require("plugins.lsp.null-ls")
require("plugins.lsp.fidget")
