# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_colored_prompt=yes

#if [ -n "$force_color_prompt" ]; then
#    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#	# We have color support; assume it's compliant with Ecma-48
#	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#	# a case would tend to support setf rather than setaf.)
#	color_prompt=yes
#    else
#	color_prompt=
#    fi
#fi

#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
#unset color_prompt force_color_prompt

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# sinai: replace this with "LS_COLORS" below.
# enable color support of ls and also add handy aliases
#if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
#    eval "`dircolors -b`"
#    alias ls='ls --color=auto'
#    #alias dir='ls --color=auto --format=vertical'
#    #alias vdir='ls --color=auto --format=long'
#
#    alias grep='grep --color=auto'
#    #alias fgrep='fgrep --color=auto'
#    #alias egrep='egrep --color=auto'
#fi

# https://github.com/nicolashery/mac-dev-setup#iterm2
# Always use color output for `ls`
#alias ls="command ls -G"
alias ls="ls -G"
#export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# some more ls aliases
# sinai: see .bash_aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#sinai
export PATH=$PATH:/usr/local/git/bin/

#export PROMPT_COMMAND=
export EDITOR=/Applications/MacVim/MacVim.app/Contents/MacOS/MacVim

export GREP_OPTIONS='--directories=skip'

# sinai: disabled on 4/17/17 to be able to set the tab title. TODO: maybe reinstate.
#sinai: git prompt: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
#source ~/git-prompt.sh
#export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
#export GIT_PS1_SHOWDIRTYSTATE=1
#export GIT_PS1_SHOWCOLORHINTS=1
#export GIT_PS1_SHOWUNTRACKEDFILES=1
#export GIT_PS1_SHOWUPSTREAM="auto"

# Only show the current directory's name in the tab title / name
# See https://github.com/barryclark/bashstrap/blob/master/.bash_profile#L105,
# https://gist.github.com/phette23/5270658
# See also http://stackoverflow.com/a/11107564/570529
# export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# sinai 4/17/17: change the prompt to show only the path and $
# https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
PS1="\w $ "
# sinai: change the command we run at a new prompt to set the tab title to the current dir.
# *** Replaced by the "badge" alias in .bash_aliases
# sinai: trying this again 10/15/19
PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
# sinai: allow override of the tab title.
# First reset the prompt command we run at a new prompt to not set the tab title
# https://superuser.com/a/599156/366187
# *** Replaced by the "badge" alias in .bash_aliases
#function title {
#    PROMPT_COMMAND='echo -ne ""'
#    echo -ne "\033]0;"$*"\007"
#}

#sinai: https://github.com/nicolashery/mac-dev-setup#beautiful-terminal
# commented out while trying iterm2 color schemes: source ~/.bash_prompt
# commented out while trying iterm2 color schemes: source ~/.ls_aliases

# sinai 4/1/17
# From https://github.com/bonniee/egghead-unix/blob/master/tmux/.bashrc
# and https://egghead.io/lessons/tools-handle-history-in-tmux-sessions?series=wrangle-your-terminal-with-tmux
shopt -s histappend # Append to history, don't overwrite it
shopt -s histreedit # Re-edit a history substitution line if it failed
shopt -s histverify # # Edit a recalled history line before executing
HISTFILE=~/.bash_history # Set the filename to save history to
HISTSIZE=1000000 # Set your history file to be reasonably huge
# sinai 10/11/19 -- don't like this
#HISTTIMEFORMAT="[%F %T %Z]"

# Append, clear, and read history after each command
#PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" *** Replaced by the "badge" alias in .bash_aliases
# sinai: trying 'echo -ne "\033]0;${PWD##*/}\007"' again 10/15/19, so commenting this out
#PROMPT_COMMAND="history -a; history -c; history -r"
# Ignore duplicate commands, and commands that start with spaces
HISTCONTROL='ignoreboth'


# FZF https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
