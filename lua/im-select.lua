vim.api.nvim_command('autocmd VimEnter * :silent !C:/Users/Administrator/Desktop/yang/ENVIRONMENTS/ims/im-select.exe 1033')
vim.api.nvim_command('autocmd InsertEnter * :silent :!C:/Users/Administrator/Desktop/yang/ENVIRONMENTS/ims/im-select.exe 2052')
vim.api.nvim_command('autocmd InsertLeave * :silent :!C:/Users/Administrator/Desktop/yang/ENVIRONMENTS/ims/im-select.exe 1033')
vim.api.nvim_command('autocmd VimLeave * :silent !C:/Users/Administrator/Desktop/yang/ENVIRONMENTS/ims/im-select.exe 2052')
