# uncomment for zsh load benchmark
# zmodload zsh/zprof

# dotfile dir
DOTFILE_DIR="dotfiles"

# homebrew zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/$DOTFILE_DIR/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="avit"

# activate starship prompt
eval "$(starship init zsh)"

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
plugins=(git brew macos colored-man-pages extract direnv bundler)

source $ZSH/oh-my-zsh.sh

# Disable auto-correct
unsetopt correct_all

# always work in a zellij session when working in ghostty
if [[ -z "$ZELLIJ" && "$TERM" == "xterm-ghostty" ]]; then
    zellij attach -c dev
fi

# load related files
. ~/$DOTFILE_DIR/zsh/env
. ~/$DOTFILE_DIR/zsh/config
. ~/$DOTFILE_DIR/zsh/functions
. ~/$DOTFILE_DIR/zsh/aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# uncomment for zsh load benchmark
# zprof

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source /Users/mjansing/.docker/init-zsh.sh || true # Added by Docker Desktop
