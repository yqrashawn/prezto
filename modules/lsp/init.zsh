if (( ! $+commands[bash-language-server] )); then
  echo "Installing bash-language-server"
  yarn global add bash-language-server
fi
