OSX="Darwin"
LINUX="Linux"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

if [[ ! -d $ZSH ]]; then
    ZSH=/usr/share/oh-my-zsh/
fi

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
	  mkdir $ZSH_CACHE_DIR
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="bira"

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
alias tlist='tmux -2 list-sessions'
alias be='bundle exec'
alias ne='nvm exec'
alias bi='bundle install'
alias fvim='vim `fzf`'
alias yr='yarn redwood'


# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git macos ruby rails asdf zsh-autosuggestions)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

if [[ `uname` = $OSX ]]; then
    alias vim='mvim -v'
    export PATH="/opt/homebrew/bin:$PATH"
    # export PATH=$PATH:/usr/texbin
    # export RBENV_ROOT=/usr/local/var/rbenv
    # export PATH="$HOME/Library/Haskell/bin:$PATH"
    # export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
fi


if [[ `uname` = $OSX ]]; then
    [[ -s `brew --prefix`/etc/autojump.sh ]] && bash `brew --prefix`/etc/autojump.sh
fi

# Customize to your needs...
#
export NODE_REPL_HISTORY_FILE="$HOME/.node_repl_history"


# export PATH="$RBENV_ROOT:$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/octave/3.8.2/bin:$PATH"


export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator:$PATH
export PATH=$PATH:$ANDROID_HOME/tools:$PATH
export PATH=$PATH:$ANDROID_HOME/tools/bin:$PATH
export PATH=$PATH:$ANDROID_HOME/platform-tools:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

export PATH=$PATH:$HOME/Library/Python/2.7/bin


export PATH="$HOME/.yarn/bin:$PATH"


export TORCH_DIR="/Users/tkahn/torch"
[ -s "$TORCH_DIR/install/bin/torch-activate" ] && . "$TORCH_DIR/install/bin/torch-activate"

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"


#export IDF_PATH="$HOME/esp/esp-idf"
#source $HOME/esp/esp-idf/export.sh
#
export PATH="$HOME/.cargo/bin:$PATH"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
#
#


# export PATH="$PATH:$HOME/tools/flutter/bin"
# export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
# export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export PATH="/opt/homebrew/opt/bison/bin:$PATH"

if [[ -f ~/.config/profile ]]; then
  source ~/.config/profile
fi


# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "/usr/lib/kitty/shell-integration/kitty.zsh"; then source "/usr/lib/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION

# export PATH="$HOME/.poetry/bin:$PATH"
# export PATH=$HOME/depot_tools:$PATH
export PATH="/opt/homebrew/sbin:$PATH"

# asdf
export ASDF_DIR=/opt/homebrew/opt/asdf/libexec
. /opt/homebrew/opt/asdf/libexec/asdf.sh

eval "$(starship init zsh)"
