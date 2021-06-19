if (( ! $+commands[mcfly] )); then
  echo "Installing mcfly"
  brew install cantino/mcfly/mcfly
fi

eval "$(mcfly init zsh)"
export MCFLY_KEY_SCHEME=vim
export MCFLY_FUZZY=true
