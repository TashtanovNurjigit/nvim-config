vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.bo.filetype ~= "" then
      vim.cmd("silent! write")
    end
  end,
})

-- Basic
require('core.plugins')
require('core.mappings')
require('core.colors')
require('core.configs')

--Plugins 
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.telescope')
require('plugins.autotag')
require('plugins.buffline')
require('plugins.comments')
require('plugins.lualine')
require('plugins.toggleterm')
require('plugins.none-ls')
