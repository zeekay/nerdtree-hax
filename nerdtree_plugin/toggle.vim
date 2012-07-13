" Silently toggle Nerdtree, changing cwd to file toggle is executed from.
function! s:NERDTreeToggle()
    echo
    if exists('b:NERDTreeRoot') == 1
        NERDTreeClose
    else
        silent! NERDTree %:p:h
    endif
    pwd
endfunction

command! -nargs=0 NERDTreeQuietToggle call s:NERDTreeToggle()
