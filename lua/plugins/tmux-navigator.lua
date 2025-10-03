-- tmux_navigator.lua
return {
    "christoomey/vim-tmux-navigator",
    config = function()
        -- Отключаем стандартные бинды
        vim.g.tmux_navigator_no_mappings = 1

        local opts = { silent = true, noremap = true }

        -- Нормальный режим
        vim.keymap.set('n', '<C-h>', ":TmuxNavigateLeft<CR>", opts)
        vim.keymap.set('n', '<C-j>', ":TmuxNavigateDown<CR>", opts)
        vim.keymap.set('n', '<C-k>', ":TmuxNavigateUp<CR>", opts)
        vim.keymap.set('n', '<C-l>', ":TmuxNavigateRight<CR>", opts)

        -- Вставочный режим
        vim.keymap.set('i', '<C-h>', "<C-\\><C-N>:TmuxNavigateLeft<CR>", opts)
        vim.keymap.set('i', '<C-j>', "<C-\\><C-N>:TmuxNavigateDown<CR>", opts)
        vim.keymap.set('i', '<C-k>', "<C-\\><C-N>:TmuxNavigateUp<CR>", opts)
        vim.keymap.set('i', '<C-l>', "<C-\\><C-N>:TmuxNavigateRight<CR>", opts)

        -- Терминальный режим
        vim.keymap.set('t', '<C-h>', "<C-\\><C-N>:TmuxNavigateLeft<CR>", opts)
        vim.keymap.set('t', '<C-j>', "<C-\\><C-N>:TmuxNavigateDown<CR>", opts)
        vim.keymap.set('t', '<C-k>', "<C-\\><C-N>:TmuxNavigateUp<CR>", opts)
        vim.keymap.set('t', '<C-l>', "<C-\\><C-N>:TmuxNavigateRight<CR>", opts)
    end
}

