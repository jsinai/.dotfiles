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
alias ggraph='git log --graph --all --decorate'
alias gbl='git branch -l'
alias gt="git for-each-ref --sort=-creatordate --format '%(refname) %(creatordate)' refs/tags|less"
alias glj="git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%<(12,trunc)%an%Cgreen%d %Creset%s' --date=short"

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

# Instead of loading in bashrc, which takes a long time, load on demand
alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";node -v'

# Use exa instead of ls
alias ls='exa'
alias l='exa -snew'
alias ll='exa -l -snew'
alias la='exa -a -snew'
alias lla='exa -a -l -snew'
alias lrt='exa -l --sort=created'

# python
#alias python="python3"
#

# From Dave
alias kdp='kubectl delete pod $1'
alias kgp='kubectl get pods'
alias klf='kubectl logs --follow $1'

alias nwu='cd /Users/juliansinai/exo-github/nexgen-web-ui'
alias nhc='cd /Users/juliansinai/exo-github/nexgen-hcs'
alias pls='cd /Users/juliansinai/exo-github/exo-pulse'
alias nss='cd /Users/juliansinai/exo-github/nexgen-shared-services'
alias ni='cd /Users/juliansinai/exo-github/cloud-build-nexgen-infra'
alias cwu='cd /Users/juliansinai/exo-github/cloud-web-ui'
alias chc='cd /Users/juliansinai/exo-github/cloud-hcs'
alias slc='cd /Users/juliansinai/exo-github/smart-link-client'

