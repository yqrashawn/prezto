if (( ! $+commands[rg] )); then
  echo "Installing ripgrep"
  brew install ripgrep
fi

alias rgu="rg -uu"
alias rguu="rg -uu"
alias rgfu="rg -F -u"
alias rgf="rg --files --no-ignore --hidden --follow"


# completion
if ! typeset -f _rg > /dev/null && test -f /usr/local/opt/rg/share/zsh/site-functions/_rg; then
  fpath=(/usr/local/opt/rg/share/zsh/site-functions $fpath)
fi
