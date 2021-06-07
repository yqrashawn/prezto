if ! is-darwin && ! is-linux; then
  return 1
fi

# Homebrew Service
alias brewsl='brew services list'
alias brewss='brew services start'
alias brewsr='brew services restart'
alias brewsx='brew services stop'

alias brewh='brew home'
alias brewr='brew reinstall'
alias brewc='brew cleanup'

alias caskr='brew reinstall --cask'
alias caskh='brew home --cask'
alias caksc='brew cleanup --cask'
