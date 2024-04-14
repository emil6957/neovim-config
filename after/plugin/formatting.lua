local conform = require("conform");

conform.setup({
    formatter_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylelua" },
    },

    format_on_save = {
        lsp_fallback = true,
        async = false,
        time_ms = 500,
    },
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
    })
end, { desc = "Format file or range (in v mode)" })
