require "nvchad.options"

-- Indenting
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- disable mouse
vim.opt.mouse = ""

vim.opt.listchars = {
    tab = "▸ ",
    trail = ".",
    nbsp = "␣",
}

vim.opt.list = true

vim.opt.relativenumber = true
