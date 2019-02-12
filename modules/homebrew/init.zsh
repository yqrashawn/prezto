#
# Defines Homebrew aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != (darwin|linux)* ]]; then
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
alias brewC='brew cleanup --force'
alias brewi='brew install'
alias brewl='brew list'
alias brewh='brew home'
alias brewo='brew outdated'
alias brews='brew search'
alias brewu='brew update && brew upgrade'
alias brewx='brew remove'

# Homebrew Cask
alias caskua='brew cask list | xargs brew cask reinstall'
alias cask='brew cask'
alias caskh='brew cask home'
alias caskc='brew cask cleanup --outdated'
alias caskC='brew cask cleanup'
alias caski='brew cask install'
alias caskr='brew cask reinstall'
alias caskl='brew cask list'
alias casko='brew cask outdated'
alias casks='brew cask search'
alias caskx='brew cask uninstall'

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
