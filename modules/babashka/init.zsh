if (( ! $+commands[bb] )); then
  echo "Installing babashka"
  brew install borkdude/brew/babashka
fi

alias bbn='bb --nrepl-server'
