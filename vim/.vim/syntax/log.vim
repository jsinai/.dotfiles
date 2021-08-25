" sinai
"
" https://stackoverflow.com/q/2193157/570529
"
" This creates a keyword ERROR and puts it in the highlight group called logError
:syn keyword logError ERROR
:syn keyword logInfo INFO
:syn match logTimestamp /^[\[{]\s*[0-9\.]\+[\]}]/
:syn match logPrefix /\(###\|===\)/

" Now make them appear:
" Link just links logError to the colouring for error
hi link logError Error
hi link logInfo Info
hi link logTimestamp Timestamp 
hi link logPrefix LogPrefix 

