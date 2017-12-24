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
# Aliases
#

# Homebrew
alias brew='ss brew'
alias brewc='brew cleanup'
alias brewC='brew cleanup --force'
alias brewi='ss brew install'
alias brewl='brew list'
alias brewh='ss brew home'
alias brewo='ss brew outdated'
alias brews='ss brew search'
alias brewu='ss brew update && brew upgrade'
alias brewx='brew remove'

# Homebrew Cask
alias caskua='brew cask list | xargs brew cask reinstall'
alias cask='brew cask'
alias caskh='ss brew cask home'
alias caskc='brew cask cleanup --outdated'
alias caskC='brew cask cleanup'
alias caski='ss brew cask install'
alias caskr='ss brew cask reinstall'
alias caskl='brew cask list'
alias casko='ss brew cask outdated'
alias casks='ss brew cask search'
alias caskx='brew cask uninstall'
