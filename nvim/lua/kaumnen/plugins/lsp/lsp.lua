return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "rust_analyzer",
                "ruff",
                "ruff_lsp",
                "gopls",
                "golangci_lint_ls",
            },
        })
    end,
}
