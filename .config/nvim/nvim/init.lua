-- Change caps to escape on linux
--setxkbmap -option caps:escape
--restore setxkbmap -option


--vim.opt.guifont = { "Hack", "25" }

require("core.keymaps")
require("core.plugins")
require("core.plugin_config")
