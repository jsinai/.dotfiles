" ~/.vim/sessions/default-autorun.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 06 February 2019 at 16:41:35.
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
call setqflist([{'lnum': 0, 'col': 0, 'pattern': '', 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/default-autorun.brs', 'text': '[Search results for ''foreach'']'}, {'lnum': 94, 'col': 21, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/commonSetup.js', 'text': '            angular.forEach(fwManifestData.BrightSignFirmware.FirmwareFile, function(fwFile, index) {'}, {'lnum': 254, 'col': 23, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/deviceConfig/deviceConfig.js', 'text': '        $scope.growls.forEach(function(growl) {'}, {'lnum': 36, 'col': 26, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/deviceConfig/wifiSetup.js', 'text': '            wifiNetworks.forEach(function (element, index, array) {'}, {'lnum': 79, 'col': 25, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/deviceConfig/networkDiagnostics.js', 'text': '                angular.forEach(networkDiagnosticsResult.ethernetresults.structured_log, function(logEntry, key) {'}, {'lnum': 95, 'col': 25, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/deviceConfig/networkDiagnostics.js', 'text': '                angular.forEach(networkDiagnosticsResult.wirelessresults.structured_log, function(logEntry, key) {'}, {'lnum': 110, 'col': 25, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/deviceConfig/networkDiagnostics.js', 'text': '                angular.forEach(networkDiagnosticsResult.internetresults.structured_log, function(logEntry, key) {'}, {'lnum': 525, 'col': 10, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/package-lock.json', 'text': '        "foreach": "2.0.5",'}, {'lnum': 983, 'col': 6, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/package-lock.json', 'text': '    "foreach": {'}, {'lnum': 985, 'col': 47, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/package-lock.json', 'text': '      "resolved": "https://registry.npmjs.org/foreach/-/foreach-2.0.5.tgz",'}, {'lnum': 985, 'col': 57, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/package-lock.json', 'text': '      "resolved": "https://registry.npmjs.org/foreach/-/foreach-2.0.5.tgz",'}, {'lnum': 303, 'col': 43, 'pattern': '', 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/web-client-src/app.js', 'text': '                    $rootScope.stateStack.forEach( function(state, index) {'}, {'lnum': 0, 'col': 0, 'pattern': '', 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'module': '', 'filename': '/Users/jsinai/git/bs/default-autorun/default-autorun.brs', 'text': '[Search command exited with status 0]'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/git/bs/default-autorun/web-client-src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +259 ~/git/bs/default-autorun/libBRS/setupBSN.brs
badd +54 services/brightSignSetupService.js
badd +68 bsnSignIn/bsnSignIn.js
badd +111 app.js
badd +41 bsn/bsn.js
badd +1429 ~/git/bs/default-autorun/default-autorun.brs
badd +12 ~/git/bs/default-autorun/libBRS/setupCore.brs
badd +27 bsnSignIn/bsnSignIn.html
badd +1 bsn/bsn.html
badd +1 deviceConfig/networkDiagnostics.js
badd +36 deviceConfig/wifiSetup.js
badd +85 deviceConfig/networkDiagnostics.js
badd +649 ~/Temp/log2.txt
argglobal
silent! argdel *
edit services/brightSignSetupService.js
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
exe '1resize ' . ((&lines * 67 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 31 + 81) / 163)
exe '2resize ' . ((&lines * 67 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 131 + 81) / 163)
exe '3resize ' . ((&lines * 10 + 40) / 80)
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
let s:l = 221 - ((39 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
221
normal! 028|
lcd ~/git/bs/default-autorun/web-client-src/services
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
lcd ~/git/bs/default-autorun/web-client-src
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 67 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 31 + 81) / 163)
exe '2resize ' . ((&lines * 67 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 131 + 81) / 163)
exe '3resize ' . ((&lines * 10 + 40) / 80)
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
NERDTree ~/git/bs/default-autorun/web-client-src/bsn
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
1resize 67|vert 1resize 31|2resize 67|vert 2resize 131|3resize 10|vert 3resize 163|
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
