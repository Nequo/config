function keymap(mode, lhs, rhs, opts)
    local options = { silent = true, noremap = true }

    if opts then options = vim.tbl_extend('force', options, opts) end

    return vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--function keymap(mode, lhs, rhs, opts)
--  return vim.api.nvim_set_keymap(mode, lhs, rhs, vim.tbl_extend('keep', opts or {}, {
--        nowait = true,
--        silent = true,
--        noremap = true,
--    }))
--end

-- compe
vim.cmd([[inoremap <silent><expr> <CR>      compe#confirm('<CR>')]])

-- Telescope
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
keymap('n', '<leader>fa', "<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>")

-- Lsp-trouble
keymap("n", "<leader>lt", "<cmd>LspTroubleToggle<cr>")

-- Nvim-tree
keymap('n', '<leader>op', "<cmd>NvimTreeToggle<cr>")

-- Dashboard
keymap('n', "<leader>ss", ":<C-u>SessionSave<CR>")
keymap('n', "<leader>sl", ":<C-u>SessionLoad<CR>")
