" ~/.vim/sessions/blessings.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 06 February 2019 at 16:42:01.
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
call setqflist([{'lnum': 0, 'col': 0, 'pattern': '', 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'NERD_tree_2', 'text': '[Search results for ''v1'']'}, {'lnum': 6, 'col': 11, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/seed-players.js', 'text': 'const uuidv1 = require(''uuid/v1'');'}, {'lnum': 6, 'col': 30, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/seed-players.js', 'text': 'const uuidv1 = require(''uuid/v1'');'}, {'lnum': 17, 'col': 36, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/seed-players.js', 'text': '		return player.registerAPIKey(uuidv1());'}, {'lnum': 116, 'col': 27, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/00-system-init.js', 'text': '        let serial = uuid.v1();'}, {'lnum': 138, 'col': 33, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/00-system-init.js', 'text': '      ''serviceType'' : { S: uuid.v1() },'}, {'lnum': 18, 'col': 15, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/06-netsuite.js', 'text': '    const uuidv1 = require(''uuid/v1'');'}, {'lnum': 18, 'col': 34, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/06-netsuite.js', 'text': '    const uuidv1 = require(''uuid/v1'');'}, {'lnum': 19, 'col': 70, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/06-netsuite.js', 'text': '    let ply = players.createPlayer(netsuiteFakeSerial, `secret.${uuidv1()}`, `cert.${uuidv1()}`);'}, {'lnum': 19, 'col': 90, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/06-netsuite.js', 'text': '    let ply = players.createPlayer(netsuiteFakeSerial, `secret.${uuidv1()}`, `cert.${uuidv1()}`);'}, {'lnum': 67, 'col': 15, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    const uuidv1 = require(''uuid/v1'');'}, {'lnum': 67, 'col': 34, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    const uuidv1 = require(''uuid/v1'');'}, {'lnum': 68, 'col': 69, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    let ply = players.createPlayer(config.fakeSerial, `secret.${uuidv1()}`, `cert.${uuidv1()}`);'}, {'lnum': 68, 'col': 89, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    let ply = players.createPlayer(config.fakeSerial, `secret.${uuidv1()}`, `cert.${uuidv1()}`);'}, {'lnum': 83, 'col': 15, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    const uuidv1 = require(''uuid/v1'');'}, {'lnum': 83, 'col': 34, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    const uuidv1 = require(''uuid/v1'');'}, {'lnum': 84, 'col': 70, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    let ply = players.createPlayer(config.fakeSerial2, `secret.${uuidv1()}`, `cert.${uuidv1()}`);'}, {'lnum': 84, 'col': 90, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/test/01-player-init.js', 'text': '    let ply = players.createPlayer(config.fakeSerial2, `secret.${uuidv1()}`, `cert.${uuidv1()}`);'}, {'lnum': 68, 'col': 25, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/local/auditlog.js', 'text': '        ''id'': { S: uuid.v1() },'}, {'lnum': 8, 'col': 11, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/db/seed-players.js', 'text': 'const uuidv1 = require(''uuid/v1'');'}, {'lnum': 8, 'col': 30, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/db/seed-players.js', 'text': 'const uuidv1 = require(''uuid/v1'');'}, {'lnum': 19, 'col': 36, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'api/src/db/seed-players.js', 'text': '		return player.registerAPIKey(uuidv1());'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': 'NERD_tree_2', 'text': '[Search command exited with status 0]'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/git/bs/blessings
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +25 ~/Documents/blessings/boot.brs
badd +5 api/src/api-players-get-licenses-netsuite.js
badd +20 proxy/src/big_proxy.js
badd +40 proxy/src/api-blessings.js
badd +0 ~/Documents/postman/oauth-client.postman_collection.json
badd +1 on-premise/install-blessing.js
badd +0 ~/.ssh/id_rsa.pub
badd +3 on-premise/package.json
badd +1 proxy/src/package.json
badd +0 ~/Documents/workspaces/brightsign-general/canonical\ scripts/index.html
argglobal
silent! argdel *
edit on-premise/install-blessing.js
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
exe '1resize ' . ((&lines * 70 + 41) / 83)
exe 'vert 1resize ' . ((&columns * 31 + 81) / 163)
exe '2resize ' . ((&lines * 70 + 41) / 83)
exe 'vert 2resize ' . ((&columns * 131 + 81) / 163)
exe '3resize ' . ((&lines * 10 + 41) / 83)
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
let s:l = 175 - ((32 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
175
normal! 026|
lcd ~/git/bs/blessings/on-premise
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
lcd ~/git/bs/blessings/api/src
wincmd w
exe '1resize ' . ((&lines * 70 + 41) / 83)
exe 'vert 1resize ' . ((&columns * 31 + 81) / 163)
exe '2resize ' . ((&lines * 70 + 41) / 83)
exe 'vert 2resize ' . ((&columns * 131 + 81) / 163)
exe '3resize ' . ((&lines * 10 + 41) / 83)
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
NERDTree ~/git/bs/blessings/api/src
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
1resize 70|vert 1resize 31|2resize 70|vert 2resize 131|3resize 10|vert 3resize 163|
1wincmd w
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
