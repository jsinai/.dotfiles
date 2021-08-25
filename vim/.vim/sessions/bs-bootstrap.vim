" ~/.vim/sessions/bs-bootstrap.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 06 February 2019 at 16:41:20.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrL
silent! set guifont=Knack\ Regular\ Nerd\ Font\ Complete:h15
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 0 | filetype indent off | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'molokai' | colorscheme molokai | endif
call setqflist([{'lnum': 0, 'col': 0, 'pattern': '', 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/.vimrc', 'text': '[Search results for ''certs'']'}, {'lnum': 7, 'col': 33, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'config/config.js', 'text': '    featuresAvailable: ''https://certs.brightsignnetwork.com/features/api/v1/features'', // needs a supervisor upgrade to change'}, {'lnum': 8, 'col': 33, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'config/config.js', 'text': '    supervisorUpgrade: ''https://certs.brightsignnetwork.com/features/api/v1/supervisors'','}, {'lnum': 14, 'col': 24, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'config/config.js', 'text': '    echotest: ''https://certs.brightsignnetwork.com/echo/ping'','}, {'lnum': 8, 'col': 36, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/bs-bootstrap/services/aws_s3_uploader.js', 'text': 'const s3uploadServerURL = ''https://certs.brightsignnetwork.com/files/api/v1/verify'';'}, {'lnum': 9, 'col': 36, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/bs-bootstrap/services/aws_s3_uploader.js', 'text': 'const s3uploadNotifyURL = ''https://certs.brightsignnetwork.com/files/api/v1/notify'';'}, {'lnum': 12, 'col': 36, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/bs-bootstrap/services/install-blessing.js', 'text': 'const exchangeRegTokenURL = config.certsServerUrlPrefix + ''/api/v1/exchange-reg-token'';'}, {'lnum': 13, 'col': 40, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/bs-bootstrap/services/install-blessing.js', 'text': 'const exchangeRefreshTokenURL = config.certsServerUrlPrefix + ''/api/v1/exchange-refresh-token'';'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/.vimrc', 'text': '[Search command exited with status 0]'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/git/bs/bs-bootstrap
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 services/certs-features/src/token-services.js
badd +174 src/services/token-services.js
badd +411 ~/.vimrc
badd +44 src/services/install-blessing.js
badd +15 services/certs-features/src/features.js
badd +24 services/certs-features/src/feature_check.js
badd +97 services/certs-features/src/config.js
badd +1 certs-features/src/features.js
badd +67 install/install.sh
badd +13 services/certs-features/src/package.json
badd +0 ~/Temp/eventLog.txt
badd +12 ~/Downloads/write_registry_dev.brs
badd +79 /Volumes/RIGHT/lfn-dr-dl/local-sync.json
badd +48 ~/Temp/lot.txt
badd +0 services/certs-features/src/supervisors.js
argglobal
silent! argdel *
edit services/certs-features/src/supervisors.js
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 71 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 31 + 81) / 163)
exe '2resize ' . ((&lines * 71 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 131 + 81) / 163)
exe '3resize ' . ((&lines * 10 + 42) / 84)
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/git/bs/bs-bootstrap/services/certs-features/src
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/git/bs/bs-bootstrap
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 71 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 31 + 81) / 163)
exe '2resize ' . ((&lines * 71 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 131 + 81) / 163)
exe '3resize ' . ((&lines * 10 + 42) / 84)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/git/bs/bs-bootstrap/services/certs-features/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
3wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
cwindow
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 71|vert 1resize 31|2resize 71|vert 2resize 131|3resize 10|vert 3resize 163|
2wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
