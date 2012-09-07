" Silently toggle Nerdtree, changing cwd to file toggle is executed from.
function! s:NERDTreeCD()
    echo
    silent! NERDTree %:p:h
    pwd
endfunction

command! -nargs=0 NERDTreeCD call s:NERDTreeCD()
