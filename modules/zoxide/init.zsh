if (( ! $+commands[zoxide] )); then
  return 1
fi

alias cd='zoxide'
alias z='zoxide'
eval "$(zoxide init zsh)"
