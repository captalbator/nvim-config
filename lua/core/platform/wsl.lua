-- Yank to windows clipboard
--vim.cmd([[
--  augroup Yank
--  autocmd!
--  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
--  augroup END
--]])

vim.cmd([[let g:clipboard = {
                \   'name': 'WslClipboard',
                \   'copy': {
                \      '+': 'clip.exe',
                \      '*': 'clip.exe',
                \    },
                \   'paste': {
                \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \   },
                \   'cache_enabled': 0,
                \ }]])
