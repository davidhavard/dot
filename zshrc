# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-pop.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Theme
ZSH_THEME="miloshadzic"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/.composer/vendor/bin:~/bin"
export BROWSER=/usr/bin/chromium

# Aliases
alias vi="nvim"
alias ssh="TERM=xterm ssh"

# Editor
export VISUAL=nvim

# Local conf that we cannot commit
source ~/.zsh.local
