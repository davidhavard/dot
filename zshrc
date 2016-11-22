# vi mode FYW
bindkey -v

# Prevent the delay when switching vi mode
export KEYTIMEOUT=1

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="miloshadzic"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-pop.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="~/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/.composer/vendor/bin"
export BROWSER=/usr/bin/chromium
export GOPATH=~/.go

# Aliases
alias vi="nvim"
alias ssh="TERM=xterm ssh"
alias dockertop="docker stats $(docker ps --format='{{.Names}}')"

# Editor
export VISUAL=nvim

# Local conf that we cannot commit
source ~/.zsh.local

[ -s "/home/david/.dnx/dnvm/dnvm.sh" ] && . "/home/david/.dnx/dnvm/dnvm.sh" # Load dnvm

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

