# dotfile dir
DOTFILE_DIR="dotfiles"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/$DOTFILE_DIR/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="minimal"

# Disable weekly update checks
DISABLE_AUTO_UPDATE="true"

# Disable auto-setting of terminal title
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? Plugins can be found in:
#   ~/.oh-my-zsh/plugins/*
#
# Custom plugins may be added to:
#   ~/.oh-my-zsh/custom/plugins/
#
# Example format:
#   plugins=(rails git textmate ruby)
plugins=(git bundler osx rails)

source $ZSH/oh-my-zsh.sh

# Disable auto-correct
unsetopt correct_all

# Always work in a tmux session if tmux is installed
# if which tmux 2>&1 >/dev/null; then
#   if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ]; then
#     tmux attach -t development || tmux new -s development; exit
#   fi
# fi

# load related files
. ~/$DOTFILE_DIR/zsh/env
. ~/$DOTFILE_DIR/zsh/config
. ~/$DOTFILE_DIR/zsh/functions
. ~/$DOTFILE_DIR/zsh/aliases
