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

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby rvm rails rbenv)

source $ZSH/oh-my-zsh.sh

if [[ `uname` = $OSX ]]; then
    alias vim='mvim -v'
    export PATH=$PATH:/usr/texbin
    export RBENV_ROOT=/usr/local/var/rbenv
    export PATH="$HOME/Library/Haskell/bin:$PATH"
    export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
fi


[[ -s `brew --prefix`/etc/autojump.sh ]] && bash `brew --prefix`/etc/autojump.sh

# Customize to your needs...

export PATH="$RBENV_ROOT:$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/bin:$PATH"

eval "$(rbenv init -)"
