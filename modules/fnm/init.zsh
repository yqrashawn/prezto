if (( ! $+commands[fnm] )); then
  echo "Installing fnm"
  brew install fnm
fi
if (( ! $+commands[yarn] )); then
  echo "Installing yarn"
  fnm install 16
fi
if (( ! $+commands[textlint] )); then
  echo "Installing textlint"
  yarn global add textlint
fi

# fnm auto change node version on cd
export PATH=$HOME/.fnm/current/bin:$PATH
export FNM_MULTISHELL_PATH=$HOME/.fnm/current
export FNM_DIR=$HOME/.fnm/
export FNM_NODE_DIST_MIRROR=https://nodejs.org/dist
export FNM_LOGLEVEL=info

autoload -U add-zsh-hook
_fnm_autoload_hook () {
  if [[ -f .node-version && -r .node-version ]]; then
    fnm --log-level=error use --install-if-missing
  elif [[ -f .nvmrc && -r .nvmrc ]]; then
    fnm --log-level=error use --install-if-missing
  fi
}

add-zsh-hook chpwd _fnm_autoload_hook \
  && _fnm_autoload_hook

# completion
if ! typeset -f _fnm > /dev/null && test -f /usr/local/opt/fnm/share/zsh/site-functions/_fnm; then
  fpath=(/usr/local/opt/fnm/share/zsh/site-functions $fpath)
fi


eval "$(fnm env)"
