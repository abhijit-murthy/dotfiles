require("telescope").setup()

local builtin = require('telescope.builtin')
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gS', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'ge', builtin.diagnostics, {})
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, {})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
