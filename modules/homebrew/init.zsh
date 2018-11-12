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
# `brew shellenv` is relatively new, guard for legacy Homebrew.
if (( $+commands[brew] )); then
  eval "$(brew shellenv 2> /dev/null)"
fi

#
# Aliases
#

# Homebrew
alias brew='ss brew'
alias brewc='brew cleanup'
alias brewC='brew cleanup --force'
alias brewi='ss brew install'
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
