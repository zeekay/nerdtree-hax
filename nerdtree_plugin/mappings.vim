call NERDTreeAddKeyMap({
    \ 'key': 'C',
    \ 'callback': 'NERDTreeCDHandler',
    \ 'quickhelpText': 'echo full path of current node',
    \ 'scope': 'DirNode',
\ })

call NERDTreeAddKeyMap({
   \ 'key': 'u',
   \ 'callback': 'NERDTreeUpHandler',
   \ 'quickhelpText': 'echo full path of current node',
   \ 'scope': 'all',
\ })

function! NERDTreeCDHandler(dirnode)
    silent! exec 'NERDTree '.a:dirnode.path.str()
    pwd
endfunction

function! NERDTreeUpHandler()
    silent! NERDTree ..
    pwd
endfunction
