local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- Используем форматтер black для Python
    null_ls.builtins.formatting.black.with({
        extra_args = { "--line-length", "88" },
    }),
  },
})
vim.cmd([[
  augroup LspFormatting
    autocmd!
    autocmd BufWritePre *.py lua vim.lsp.buf.format()
  augroup END
]])

