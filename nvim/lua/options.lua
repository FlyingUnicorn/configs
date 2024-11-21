require("nvchad.options")

local o = vim.o

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

vim.opt.listchars = {
    tab = "▸ ",
    trail = ".",
    nbsp = "␣",
}

vim.opt.list = true
