-- lazy.nvimのkeysとkeymaps.luaの<leader>より先に決める必要があるため、最初に設定する
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
require("config.options")
require("config.autocmds")
require("config.keymaps")
