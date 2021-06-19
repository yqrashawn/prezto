if (( ! $+commands[zoxide] )); then
  echo "Installing zoxide..."
  brew install zoxide
fi

eval "$(zoxide init zsh)"
alias cd='z'
