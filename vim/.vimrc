let g:DirDiffExcludes = ".svn,*.class,all-wcprops,entries,*.svn-base,target"
" Show line numbers
set number
set ignorecase
set smartcase
set incsearch
" Turn scrollbind off for now, because of Nerdtree
" set scb
color molokai
syntax on
filetype on
" Not sure if this is needed. See http://www.vim.org/scripts/script.php?script_id=39
filetype plugin on
" To format xml: type \fx
" Replaced by vim-jsbeautify, see below.
" nmap \fx :1,$!xmllint --format -<CR>
" To format json: type \fj
" Replaced by vim-jsbeautify, see below.
" nmap \fj :%!python -m json.tool<CR>
" Customise vim-json to show quotes
let g:vim_json_syntax_conceal = 0

"set guifont=Menlo\ Regular:h12
" See evernote 8/4/15 and https://github.com/adobe-fonts/source-code-pro
"set guifont=Source\ Code\ Pro\ ExtraLight:h14
" Prefer the same look as Atom:
" Commented out in favour of droid for vim-devicons, see below
"set guifont=Menlo\ Regular:h14
set antialias
" sinai changed to make powerline font look better
" set linespace=4
set linespace=1

" Moved cursor customization to ~/.vim/colors/molokai.vim
" http://vim.wikia.com/wiki/Configuring_the_cursor
" highlight Cursor guifg=white guibg=steelblue
" http://www.8t8.us/configs/gvimrc.txt
set guicursor=a:blinkon800-blinkoff600 " Slow down cursor blinking speed
" http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
set hlsearch
" http://superuser.com/questions/680609/is-macvim-copy-to-clipboard-supposed-to-be-working-on-os-x-mavericks
" Enables copy to clipboard using e.g. yiw
" Sinai: I don't like this too much
" set clipboard=unnamed

" Set leader to comma
" https://stackoverflow.com/questions/10389205/show-current-leader-key-setting
:let mapleader=","

" vim-devicons: removed, seems to slow down nerdtree
" Note that ambiwidth breaks airline a bit; known issue
set encoding=utf8
"if has("gui_macvim")
"  set ambiwidth=double
"endif

" Start airline
"
" Fonts for airline / powerline
" Using DejaVu for now. Also for iTerm2 This was installed using https://github.com/ryanoasis/nerd-fonts
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
set guifont=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete:h15

" https://github.com/vim-airline/vim-airline/wiki/FAQ#vim-airline-doesnt-appear-until-i-create-a-new-split
set laststatus=2

let g:airline_powerline_fonts = 1

" End airline

" Simple Bookmarks keyboard shortcuts
" https://github.com/AndrewRadev/simple_bookmarks.vim
" sinai - removed in favour of vim-bookmarks
" See https://github.com/MattesGroeger/vim-bookmarks#Usage
" noremap <leader>bb :Bookmark 
" noremap <leader>bo :CopenBookmarks<CR>
" noremap <leader>bg :GotoBookmark 
" noremap <leader>bd :DelBookmark 
" let g:simple_bookmarks_highlight = 1
" let g:simple_bookmarks_signs = 1
" let g:simple_bookmarks_sign_text = 'B'
"
" vim-bookmarks
" Turn off key bindings for now, because it interferes with creating marks
let g:bookmark_no_default_key_mappings = 1

" Replace ftp with http
nmap \jf :%s#ftps*:\/\/\(jsinai@\)*ftp.brightsignnetwork.com#https://www.brightsignnetwork.com/download/jsinai#<CR>

" Switch to last-active tab in VIM
" http://stackoverflow.com/questions/2119754/switch-to-last-active-tab-in-vim
let g:lasttab = 1
nmap <Leader>lt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Redefine tab as 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" File explorer
" http://vimdoc.sourceforge.net/htmldoc/pi_netrw.html#netrw-v
" http://sts10.github.io/blog/2015/09/13/ditching-nerdtree-and-using-vims-default-file-explorer/
" Commented out on 5/30/17 to use no_plugins recommendations for nerdtree (see NERDTree below)
"let g:netrw_preview   = 1
"let g:netrw_liststyle = 3
"let g:netrw_winsize   = 30

" How to copy the path of the current file to the clipboard (mapped to F4)
" http://stackoverflow.com/questions/916875/yank-file-name-path-of-current-buffer-in-vim?noredirect=1&lq=1
noremap <silent> <F4> :let @+=expand("%:p")<CR>

"
" >>> Start no_plugins
" From https://github.com/mcantor/no_plugins and
" https://youtu.be/XA2WjJbmmoM
"       HOW TO DO 90% OF WHAT PLUGINS DO (WITH JUST VIM)
" {{{ BASIC SETUP
" BASIC SETUP:

" enter the current millenium
set nocompatible

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
set wildignore+=node_modules/**,bower_components/**

" <<< End no_plugins

" From https://stackoverflow.com/a/12022151/570529
" With this setting the current working directory will follow the file that you're editing
" sinai: instead of autochdir, use 'cd' in the nerdtree window, so that
" grepping is relative to that directory
" set autochdir
" set noautochdir
" Set working directory to the current file, except for nerdtree
" https://stackoverflow.com/a/27183954/570529
autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif


" https://stackoverflow.com/a/5818335/570529
let g:NERDTreeChDirMode=2
" Arrow icons disappear: https://stackoverflow.com/a/53708512/570529
let g:NERDTreeNodeDelimiter = "\u00a0"
" https://github.com/scrooloose/nerdtree/issues/817
let g:NERDTreeIgnore = ['^node_modules$[[dir]]']
" Trying this:
" https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9
" let NERDTreeQuitOnOpen = 1
" Doesn't seem to work. See <leader>nto
" nnoremap <C-n> :NERDTree .<CR>
" Doesn't seem to work. See <leader>ntc
" nnoremap <C-S-n> :NERDTreeClose<CR>

" Doesn't seem to work.
" Have NERDTree stay open after opening a file
" https://stackoverflow.com/a/5546006
"let NERDTreeQuitOnOpen = 0
" https://stackoverflow.com/questions/3788903/how-to-start-vim-with-nerd-tree-opened-automatically
" Showing nerdtree automatically doesn't work too well because the window
" title doesn't automatically follow the CWD. So use the find cmd instead to
" set it to what you want to show in the macos Window menu
"autocmd VimEnter * NERDTree ~/git/bs
" Trying sort order
" https://github.com/preservim/nerdtree/pull/901/commits/c7ba8c7952ef06921bda4097450bcfed1f255a18
let NERDTreeSortOrder=['[[-timestamp]]']

" From https://www.quora.com/How-do-I-close-a-tab-in-MacVim-using-the-keyboard
" C-t is mapped to something to do with tabs, might need to remap
nnoremap <C-t> :tabo<CR>

" https://github.com/mxw/vim-jsx
let g:jsx_ext_required = 0

" Relative line numbers
" The ! allows for toggling, see:
" http://learnvimscriptthehardway.stevelosh.com/chapters/38.html
:nmap <leader>rn :set rnu!<cr>

" http://chase-seibert.github.io/blog/2013/09/21/vim-grep-under-cursor.html
" opens search results in a window w/ links and highlight the matches
" sinai: trying out this grep plugin instead of the following command:
" https://github.com/yegappan/grep/blob/master/plugin/grep.vim
"command! -nargs=+ Grep execute 'silent grep! -I -r -n . -e <args>' | copen | execute 'silent /<args>'
" shift-control-* Greps for the word under the cursor
" Replaced by :Files, see below
":nmap leader>g :Rgrep <c-r>=expand("<cword>")<cr><cr>
" https://stackoverflow.com/a/26544046/570529
" Replaced by :Files, see below
":vnoremap <leader>g "vy:<C-u>Rgrep <C-r>v<CR>
let g:Grep_Default_Filelist = "*.js"
let g:Grep_Shell_Quote_Char = "\""
:nmap <leader>n :cnext<cr>
:nmap <leader>p :cprev<cr>
:nmap <leader>N :cnewer<cr>
:nmap <leader>P :colder<cr>
" in development
":nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
":vnoremap <leader>g "vy:<C-u>silent execute "grep! -R " . shellescape(expand(<C-r>v)) . " ."<cr>:copen<cr>
"
" From http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" My abbreviations, obtained from:
" /usr/libexec/PlistBuddy -x -c ""Print NSUserDictionaryReplacementItems"" ~/Library/Preferences/.GlobalPreferences.plist
" Usage: type an abbreviation like bs= in insert mode
iabbrev bs= BrightSign
iabbrev ws= WebSockets
iabbrev bs= BrightSign
iabbrev js= Julian Sinai
iabbrev j= Julian
iabbrev bc= BrightScript
iabbrev ba= BrightAuthor
iabbrev bd= B-Deploy
iabbrev da= Default Autorun
iabbrev sxm= SiriusXM
iabbrev jc= JavaScript
iabbrev oa= OAuth2

" Map df to esc
" From http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
:inoremap df <esc>

" Sinai: fix paste to suit how I want it to work: always paste what you
" yanked, not the result of the last paste. Uses register j. noremap applies to
" normal and visual modes. Still doesn't fix the "." repeat operator.
" Commented out 7/25/17 because I was having yank issues.
" Instead use ""p
"noremap y "jy
"noremap p "jp
"noremap Y "jy
"noremap P "jP
" Doesn't seem to work: https://stackoverflow.com/a/7164121/570529
"xnoremap p pgvy

" Sinai: cd to the directory of the current opened file
noremap <leader>d :NERDTreeFind<cr>
" Sinai: open nerdtree
noremap <leader>nto :NERDTree .<cr>
noremap <leader>ntc :NERDTreeClose<cr>
" Sinai: open the root dir
noremap <leader>D :exe 'NERDTree ' . agdir<CR>

" From https://github.com/maksimr/vim-jsbeautify
" Normal mode
autocmd FileType javascript noremap <buffer>  <leader>f :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <leader>f :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <leader>f :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>
" for xml. Replaces this:
" nmap \fx :1,$!xmllint --format -<CR>
autocmd FileType xml noremap <buffer> <leader>f :1,$!xmllint --format -<cr>
" Visual mode
autocmd FileType javascript vnoremap <buffer>  <leader>f :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <leader>f :call RangeJsonBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <leader>f :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>f :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>f :call RangeCSSBeautify()<cr>

" Plantuml
let g:plantuml_executable_script='java -jar ~/software/plantuml/plantuml.jar -tsvg'
" Use ,m to create svg from uml
autocmd FileType plantuml noremap <buffer> <leader>m :w<CR> :silent make<CR>

" Commentary plugin
" https://github.com/tpope/vim-commentary
" ,/ works in visual or non-visual mode.
noremap <leader>/ :Commentary<cr>
autocmd FileType dot setlocal commentstring=//\ %s
autocmd FileType brs setlocal commentstring=\'\ %s

" buffer-explorer / bufexplorer
" To control whether or not to show buffers on for the specific tab or not 'T' in the UI
let g:bufExplorerShowTabBuffer=1

" FZF
set rtp+=/opt/homebrew/opt/fzf,/opt/homebrew/bin/

" How can i prevent that fzf open files inside NERDtree buffer?
" https://github.com/junegunn/fzf/issues/453
" Doesn't quite work yet, uses the dir from the open buffer
function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction
noremap <silent> <C-p> :exe 'cd' agdir<CR>:call FZFOpen(':Files')<CR>

" Trying https://github.com/junegunn/fzf/issues/453
" nnoremap <silent> <expr> <leader>g (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"

" Doesn't seem to work. See <leader>nto
" nnoremap <C-n> :NERDTree .<CR>
" Doesn't seem to work. See <leader>ntc
" nnoremap <C-S-n> :NERDTreeClose<CR>

" Doesn't seem to work.
" Have NERDTree stay open after opening a file
" https://stackoverflow.com/a/5546006
"let NERDTreeQuitOnOpen = 0

" From https://www.quora.com/How-do-I-close-a-tab-in-MacVim-using-the-keyboard
" C-t is mapped to something to do with tabs, might need to remap
nnoremap <C-t> :tabo<CR>

" https://github.com/mxw/vim-jsx
let g:jsx_ext_required = 0

" Relative line numbers
" The ! allows for toggling, see:
" http://learnvimscriptthehardway.stevelosh.com/chapters/38.html
:nmap <leader>rn :set rnu!<cr>

" http://chase-seibert.github.io/blog/2013/09/21/vim-grep-under-cursor.html
" opens search results in a window w/ links and highlight the matches
" sinai: trying out this grep plugin instead of the following command:
" https://github.com/yegappan/grep/blob/master/plugin/grep.vim
"command! -nargs=+ Grep execute 'silent grep! -I -r -n . -e <args>' | copen | execute 'silent /<args>'
" shift-control-* Greps for the word under the cursor
" Replaced by :Files, see below
":nmap leader>g :Rgrep <c-r>=expand("<cword>")<cr><cr>
" https://stackoverflow.com/a/26544046/570529
" Replaced by :Files, see below
":vnoremap <leader>g "vy:<C-u>Rgrep <C-r>v<CR>
let g:Grep_Default_Filelist = "*.js"
let g:Grep_Shell_Quote_Char = "\""
:nmap <leader>n :cnext<cr>
:nmap <leader>p :cprev<cr>
:nmap <leader>N :cnewer<cr>
:nmap <leader>P :colder<cr>
" in development
":nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
":vnoremap <leader>g "vy:<C-u>silent execute "grep! -R " . shellescape(expand(<C-r>v)) . " ."<cr>:copen<cr>
"
" From http://learnvimscriptthehardway.stevelosh.com/chapters/07.html
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" My abbreviations, obtained from:
" /usr/libexec/PlistBuddy -x -c ""Print NSUserDictionaryReplacementItems"" ~/Library/Preferences/.GlobalPreferences.plist
" Usage: type an abbreviation like bs= in insert mode
iabbrev bs= BrightSign
iabbrev bda= B-Deploy Appliance
iabbrev bls= Blessings Server
iabbrev ws= WebSockets
iabbrev bs= BrightSign
iabbrev js= Julian Sinai
iabbrev j= Julian
iabbrev bc= BrightScript
iabbrev ba= BrightAuthor
iabbrev bd= B-Deploy
iabbrev wr= RemoteView
iabbrev sxm= SiriusXM
iabbrev jc= JavaScript
iabbrev oa= OAuth2
iabbrev =-= =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= 

" Map df to esc
" From http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
:inoremap df <esc>

" Sinai: fix paste to suit how I want it to work: always paste what you
" yanked, not the result of the last paste. Uses register j. noremap applies to
" normal and visual modes. Still doesn't fix the "." repeat operator.
" Commented out 7/25/17 because I was having yank issues.
" Instead use ""p
"noremap y "jy
"noremap p "jp
"noremap Y "jy
"noremap P "jP
" Doesn't seem to work: https://stackoverflow.com/a/7164121/570529
"xnoremap p pgvy

" Sinai: open nerdtree
noremap <leader>nto :NERDTree .<cr>
noremap <leader>ntc :NERDTreeClose<cr>

" From https://github.com/maksimr/vim-jsbeautify
" Normal mode
autocmd FileType javascript noremap <buffer>  <leader>f :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <leader>f :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <leader>f :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>
" for xml. Replaces this:
" nmap \fx :1,$!xmllint --format -<CR>
autocmd FileType xml noremap <buffer> <leader>f :1,$!xmllint --format -<cr>
" Visual mode
autocmd FileType javascript vnoremap <buffer>  <leader>f :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <leader>f :call RangeJsonBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <leader>f :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>f :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>f :call RangeCSSBeautify()<cr>

" Plantuml
let g:plantuml_executable_script='java -jar ~/software/plantuml/plantuml.jar -tsvg'
" Use ,m to create svg from uml
autocmd FileType plantuml noremap <buffer> <leader>m :w<CR> :silent make<CR>

" buffer-explorer / bufexplorer
" To control whether or not to show buffers on for the specific tab or not 'T' in the UI
let g:bufExplorerShowTabBuffer=1

" FZF
" Trying https://github.com/junegunn/fzf/issues/453
"nnoremap <silent> <expr> <leader>g (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
" Grep under cursor
" sinai: I never use this, repurpose
" :nmap <leader>g :Ag <c-r>=expand("<cword>")<cr><cr>
" This command closes the quickview window before searching, otherwise you run
" into issues
:nmap <leader>g :ccl<CR>:exe 'cd' agdir<CR>:Ag<SPACE>
" Sinai: cd to the root directory 
noremap <leader>cd :exe 'cd' agdir<CR>

" vim-session
" Doesn't work so well with multiple windows, so turn off
"let g:session_autoload='yes'
"let g:session_autosave='yes'
:let g:session_autoload = 'no'

" Syntastic
" sinai: 10/28/19: Removed this plugin
"let g:syntastic_typescript_checkers = ['tsc']

" function! FindConfig(prefix, what, where)
"     let cfg = findfile(a:what, escape(a:where, ' ') . ';')
"     return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
" endfunction

" autocmd FileType typescript let b:syntastic_typescript_args =
"     \ get(g:, 'syntastic_typescript_args', '') .
"     \ FindConfig('-c', 'tsconfig.json', expand('<afile>:p:h', 1))

" Auto-reloading a file in VIM as soon as it changes on disk
" I'm tired of clicking the Load All button
" https://superuser.com/a/181381
set autoread

" Set the title the way I want it, cwd first
"let &titlestring=expand(fnamemodify(getcwd(), ':t') . "   %F")
" sinai: wanted more control over my window title.
" Set by running:mvim --cmd "let mytitle=\"sabi\""
" You can't use -c, you must use --cmd.
" See https://stackoverflow.com/a/23127248/570529
let &titlestring=expand((exists("mytitle")==1 ? mytitle : fnamemodify(getcwd(), ':t')) . "   %F")
" Set the title upon startup
"autocmd VimEnter * :let &titlestring=expand(fnamemodify(getcwd(), ':t') . "   %F")
autocmd VimEnter * :let &titlestring=expand((exists("mytitle")==1 ? mytitle : fnamemodify(getcwd(), ':t')) . "   %F")
" doesn't work yet
" noremap <leader>C :NERDTreeMapChangeRoot<cr> :set titlestring=expand(fnamemodify(getcwd(), ':t') . "   %F")

" Turn off swap files
set noswapfile

" A regex to search for git conflicts in vim:
noremap <silent> <F6> /^\(<<<<<<<\\|=======\\|>>>>>>>\)<cr>

" sinai: filter out anything other than BCN
" This is a macro
noremap <leader>bcn /\(BCN-\d\{1,6}\):%s//\r\1,\r/g:g!//d:%jiid in ($r)

" Redraw on focus. Without this, you need to type Ctrl-L to refresh.
" https://unix.stackexchange.com/a/46828
au FocusGained * :exe "normal \<C-l>"

