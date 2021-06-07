if (( ! $+commands[zoxide] )); then
  return 1
fi

eval "$(zoxide init zsh)"
alias cd='z'
