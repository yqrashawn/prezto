#
# Defines Homebrew aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load dependencies.
pmodload 'helper'

# Return if requirements are not found.
if ! is-darwin && ! is-linux; then
  return 1
fi

#
# Variables
#

# Load standard Homebrew shellenv into the shell session.
# Load 'HOMEBREW_' prefixed variables only. Avoid loading 'PATH' related
# variables as they are already handled in standard zsh configuration.
if (( $+commands[brew] )); then
  eval "${(@M)${(f)"$(brew shellenv 2> /dev/null)"}:#export HOMEBREW*}"
fi

#
# Aliases
#

# Homebrew
alias brewc='brew cleanup'
alias brewi='brew install'
alias brewL='brew leaves'
alias brewl='brew list'
alias brewh='brew home'
alias brewo='brew outdated'
alias brews='brew search'
alias brewu='brew update && brew upgrade'
alias brewx='brew remove'
alias brewr='brew reinstall'

# Homebrew Cask
alias casku='brew outdated --cask -q | xargs brew reinstall --cask'
alias cask='brew cask'
alias caskh='brew home --cask'
alias caskc='brew cask cleanup --outdated'
alias caskC='brew cask cleanup'
alias caski='brew install --cask'
alias caskr='brew reinstall --cask'
alias caskl='brew list --list'
alias casko='brew outdated --cask'
alias casks='brew search --cask'
alias caskx='brew uninstall --cask'

# Homebrew Services
alias brewsl='brew services list'
alias brewss='brew services start'
alias brewsr='brew services restart'
alias brewsx='brew services stop'

function hb_deprecated {
  local cmd="${@[3]}"
  local cmd_args="${@:4}"

  printf "'brew cask %s' has been deprecated, " "${cmd}"
  printf "using 'brew %s' instead\n" "${cmd}"

  command brew "${cmd}" "${=cmd_args}"
}
