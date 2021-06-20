# du
if (( ! $+commands[dust] )); then
  echo "Installing dust"
  brew install dust
fi

# df
if (( ! $+commands[duf] )); then
  echo "Installing duf"
  brew install duf
fi

if (( ! $+commands[jq] )); then
  echo "Installing jq"
  brew install jq
fi

if (( ! $+commands[fd] )); then
  echo "Installing fd"
  brew install jq
fi

if (( ! $+commands[tldr] )); then
  echo "Installing tldr"
  brew install tldr
fi

if (( ! $+commands[http] )); then
  echo "Installing httpie"
  brew install httpie
fi

if (( ! $+commands[fuck] )); then
  echo "Installing thefuck"
  brew install thefuck
fi

if (( ! $+commands[procs] )); then
  echo "Installing procs"
  brew install procs
fi

if (( ! $+commands[btm] )); then
  echo "Installing bottom"
  brew install clementtsang/bottom/bottom
fi


if (( ! $+commands[glances] )); then
  echo "Installing glances"
  brew install glances
fi

if (( ! $+commands[curlie] )); then
  echo "Installing curlie"
  brew install rs/tap/curlie
fi
alias curl='curlie'

if (( ! $+commands[xh] )); then
  echo "Installing xh"
  brew install xh
fi

if (( ! $+commands[hunspell] )); then
  echo "Installing hunspell"
  brew install hunspell
fi

if (( ! $+commands[enchant-2] )); then
  echo "Installing enchant"
  brew install enchant
fi

# file explorer
if (( ! $+commands[broot] )); then
  echo "Installing broot"
  brew install broot && broot --install
  echo "Your zshrc is changed, remember to fix it"
fi
source $HOME/.config/broot/launcher/bash/br
