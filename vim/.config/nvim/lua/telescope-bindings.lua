require("telescope").setup()

local builtin = require('telescope.builtin')
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gS', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'ge', builtin.diagnostics, {})
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, {})

function find_files_binding()
  builtin.find_files {
    hidden = true
  }
end
vim.keymap.set('n', '<leader>f', find_files_binding, {})

function live_grep_binding()
  builtin.live_grep {
    hidden = true
  }
end
vim.keymap.set('n', '<leader>g', live_grep_binding, {})
