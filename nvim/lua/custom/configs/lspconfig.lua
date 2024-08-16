local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilites = require("plugins.configs.lspconfig").capabilites

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.gopls.setup = {
  on_attach = on_attach,
  capabilites = capabilites,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimprted = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    },
  },
}
