require('terminal').setup()

vim.cmd([[
    augroup FileTypeTerminal
        autocmd!
        autocmd FileType terminal set buftype=nofile
        autocmd BufEnter * autocmd FileType terminal
          \ setlocal concealcursor=nc |
          \ set readonly
        autocmd BufLeave * autocmd FileType terminal
          \ setlocal concealcursor="" |
          \ set noreadonly
    augroup END
]])
