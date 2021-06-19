if (( ! $+commands[bat] )); then
  return 1
fi

# install bat-extras
if (( ! $+commands[batgrep] )); then
  brew install eth-p/software/bat-extras
fi

# use bat as man pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# use bat as fzf previewer
if (( $+commands[fzf] )); then
  export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
fi
