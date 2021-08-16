# sinai
alias ipaddr='ifconfig en0'

# Push and pop
alias d='dirs| sed "s/ /\\`echo -e "\n\r"`/g"'
alias p='pushd'
alias o='popd;bd'
alias p1='pushd +1;bd'
alias p2='pushd +2;bd'
alias p3='pushd +3;bd'
alias p4='pushd +4;bd'
alias p5='pushd +5;bd'
alias p6='pushd +6;bd'
alias p7='pushd +7;bd'
alias p8='pushd +8;bd'
alias p9='pushd +9;bd'

alias h='history'

# Git
alias gs='git status'
alias glog='git log --decorate'
alias gone='git log --oneline --decorate'
alias ggraph='git log --graph --all --decorate'
alias gbl='git branch -l'

# BrightSign
alias serial1='screen /dev/tty.usbserial-FT079JIN0 115200'
alias serial2='screen /dev/tty.usbserial-FT079JIN1 115200'
alias serial3='screen /dev/tty.usbserial-FT079JIN2 115200'
alias serial4='screen /dev/tty.usbserial-FT079JIN3 115200'
# alias screenbs='screen /dev/tty.usbserial-141420 115200'
alias screenbs='screen /dev/tty.usbserial-* 115200'
alias screencr='screen /dev/tty.usbserial 9600'

# grep -- doesn't work yet
# http://stackoverflow.com/questions/941338/shell-script-how-to-pass-command-line-arguments-to-a-unix-alias
# http://stackoverflow.com/questions/7131670/make-bash-alias-that-takes-parameter
function grepper () { 
echo \"$1\" \"$2\" .
find . -name \"$1\" -exec grep -i \"$2\" {} \; 
}

# ifconfig, grep for well-known IP addresses
alias myifconfig='ifconfig|egrep "10\.8|10\.10|10\.0|10\.1|172\.16"'

# Create iterm2 badges
# https://stackoverflow.com/a/22684652/570529
# *** Replaces the title function in .bashrc
alias badge='function _badge(){ echo -ne "\033]0;$@\007"; printf "\e]1337;SetBadgeFormat=%s\a" $(echo -n "$@" | base64); };_badge'
# iterm2 badge for ssh sessions
# https://stackoverflow.com/q/1853946/570529
alias sshj='function _sshj(){ ssh $@; printf "\e]1337;SetBadgeFormat=%s\a" $(echo -n "${!#}" | base64); };_sshj'
# Create a badge of the last part of the current working directory
alias bd='function _badgedir(){ echo -ne "\033]0;$@\007"; printf "\e]1337;SetBadgeFormat=%s\a" $(echo -n "$@" | base64); };_badgedir $(basename $(pwd))'
# iterm2 badge for ssh sessions


# Vim
# Edit files from the command line
# http://stackoverflow.com/questions/3478755/macvim-open-file-in-existing-window
alias vi="open \"mvim://open?url=file://$1\""
# Prefer the built-in vim (/usr/bin/vim)
# alias vim="open \"mvim://open?url=file://$1\""

alias daliases='cd ~/.bash_aliases'
alias dba='cd ~/git/brightauthor'
alias dbar='cd ~/Documents/workspaces/brightauthor-projects/brightauthor\ autorun.brs'
alias dbcc='cd ~/git/bs/bsn-cloud-configuration'
alias dblessings='cd ~/git/bs/blessings'
alias dbootstrap='cd ~/git/bs/bs-bootstrap'
alias dbsn='cd ~/git/bs/bsn'
alias dcanonical='cd ~/Documents/workspaces/brightsign-general/canonical\ scripts'
alias dcerts='cd ~/git/bs/certs/services/certs-features/src'
alias dda='cd ~/git/bs/default-autorun'
alias dfatback='cd ~/git/bs/fatback'
alias dgitolite='cd ~/git/bs/gitolite-admin/'
alias dgv='cd ~/Documents/graphviz'
alias dnec='cd ~/git/bs/bs-nec'
alias doa='cd ~/git/bs/oauth2'
alias dportabella='cd ~/git/bs/portabella-repos/portabella-gitolite'
alias dpss='cd ~/git/bs/pss/pss-server'
alias dpvs='cd ~/git/bs/provisioning-server/server'
alias dsxm='cd ~/git/bs/sxm-deploy/siriusxm-node-server'
alias duml='cd ~/Documents/plantuml'
alias dws='cd ~/git/bs/websockets/websocket-server'

# Instead of loading in bashrc, which takes a long time, load on demand
alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";node -v'

# Use exa instead of ls
alias ll='exa -l -snew'

