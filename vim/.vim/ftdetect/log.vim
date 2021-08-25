au BufRead,BufNewFile *.log set filetype=log
au BufRead * if search('Starting BrightSign application...', 'nw') | setlocal ft=log | endif


