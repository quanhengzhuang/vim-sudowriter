" 2014.9.18 Sudo 保存

" Load once
if exists('g:loaded_sudowriter')
    finish
endif
let g:loaded_sudowriter = 1

command! -nargs=0 SudoWrite call SudoWrite()

function! SudoWrite()
    let current = getpos('.')
    execute '%!sudo tee %'
    edit!
    call setpos('.', current)
endfunction
