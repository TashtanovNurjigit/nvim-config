-- Bootstrap lazy.nvim
vim.opt.termguicolors = true


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Nvim NeoTree
require("lazy").setup({
	{'phaazon/hop.nvim'},
{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
	}
},

-- Nvim treesitter colorscheme for syntaxis
{ 'nvim-treesitter/nvim-treesitter' },

-- Nvim Mason for install lsp server
{  "williamboman/mason.nvim",},

-- Nvim lsp 
{'neovim/nvim-lspconfig'},

-- Nvim cmp for autocomplete
{'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
{'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, 

-- Nvim telescope for search
{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

-- null-ls for formating
  {
    'nvimtools/none-ls.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },


--Theme
-- { 'joshdick/onedark.vim' },
-- {
--   "loctvl842/monokai-pro.nvim",
--   config = function()
--     require("monokai-pro").setup({transparent_background = true})
--     vim.cmd("colorscheme monokai-pro-octagon")  -- можно заменить на одну из других тем (ниже)
--   end,
-- },

{
  "sainnhe/gruvbox-material",
  lazy = false,  -- грузим сразу, если нужно сразу применить
  config = function()
    require('gruvbox-material').setup({
      italics = true,
      contrast = "medium",
      comments = { italics = true },
      background = { transparent = true},
      float = { force_background = false, background_color = nil },
      signs = { force_background = false, background_color = nil },
      customize = nil,
    })
    vim.cmd([[colorscheme gruvbox-material]])
  end
},
-- Others
{
  -- amongst your other plugins
  {'akinsho/toggleterm.nvim', version = "*", config = true},
  -- or
  {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
},
{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
{ 'numToStr/Comment.nvim', opts = {}},
{ "akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
{ 'windwp/nvim-ts-autotag'},
{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
},
{"christoomey/vim-tmux-navigator"}

})
