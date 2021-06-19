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

# file explorer
if (( ! $+commands[broot] )); then
  echo "Installing broot"
  brew install broot && broot --install
  echo "Your zshrc is changed, remember to fix it"
fi
source $HOME/.config/broot/launcher/bash/br
