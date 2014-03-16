OSX="Darwin"
LINUX="linux-gnu"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

alias rake='noglob rake'
alias tmux='tmux -2'
alias untar='tar xvaf'
alias tattach='tmux -2 attach-session -t'
alias tnew='tmux -2 new-session -s'
alias be='bundle exec'

alias ssh_rlogin='ssh -o ServerAliveInterval=60 tkahn6@rlogin.cs.vt.edu'

if [[ `uname` = $OSX ]]; then
    alias vim='mvim -v'
    export PATH=$PATH:/usr/texbin
    export RBENV_ROOT=/usr/local/var/rbenv
fi

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby rvm rails rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$RBENV_ROOT:$PATH"
export PATH="$HOME/Library/Haskell/bin:$HOME/.bin:$PATH"
export PATH="$HOME/.bin/pintos-bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="/usr/local/Cellar/rbenv/0.4.0/versions/2.0.0-p247/bin:$PATH"

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
