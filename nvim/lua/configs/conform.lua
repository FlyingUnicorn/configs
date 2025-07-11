local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        go = { "gofumpt", "goimports-reviser", "golines" },
        python = { "isort", "black" },
        javascript = { "prettier", "prettierd" },
        typescript = { "prettier", "prettierd" },
        javascriptreact = { "prettier", "prettierd" },
        typescriptreact = { "prettier", "prettierd" },
        vue = { "prettier", "prettierd" },
    },

    formatters = {
        -- C & C++
        ["clang-format"] = {
            prepend_args = { "--style=file", "--fallback-style=gnu" },
        },
        -- Golang
        ["goimports-reviser"] = {
            prepend_args = { "-rm-unused" },
        },
        golines = {
            prepend_args = { "--max-len=100" },
        },
        -- Lua
        stylua = {
            prepend_args = {
                "--column-width",
                "80",
                "--line-endings",
                "Unix",
                "--indent-type",
                "Spaces",
                "--indent-width",
                "4",
                "--quote-style",
                "AutoPreferDouble",
            },
        },
        -- Python
        black = {
            prepend_args = {
                "--fast",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
        prettier = {},
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 30000,
        lsp_fallback = true,
    },
}

--return options
require("conform").setup(options)
