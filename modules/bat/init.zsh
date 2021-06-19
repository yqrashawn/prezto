if (( ! $+commands[bat] )); then
  echo "Installing bat"
  brew install bat
fi

# install bat-extras
if (( ! $+commands[batgrep] )); then
  echo "Installing bat-extras"
  brew install eth-p/software/bat-extras
fi

# https://github.com/eth-p/bat-extras/blob/master/doc/batpipe.md
if (( $+commands[batpipe] )); then
  eval "$(batpipe)"
fi

# use bat as man pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
alias man='batman'

# use bat as fzf previewer
if (( $+commands[fzf] )); then
  export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
fi
