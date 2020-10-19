# fnm auto change node version on cd
export PATH=$HOME/.fnm/current/bin:$PATH
export FNM_MULTISHELL_PATH=$HOME/.fnm/current
export FNM_DIR=$HOME/.fnm/
export FNM_NODE_DIST_MIRROR=https://nodejs.org/dist
export FNM_LOGLEVEL=info

autoload -U add-zsh-hook
_fnm_autoload_hook () {
  if [[ -f .node-version && -r .node-version ]]; then
    echo "fnm: Found .node-version"
    fnm use
  elif [[ -f .nvmrc && -r .nvmrc ]]; then
    echo "fnm: Found .nvmrc"
    fnm use
  fi
}

add-zsh-hook chpwd _fnm_autoload_hook \
  && _fnm_autoload_hook
