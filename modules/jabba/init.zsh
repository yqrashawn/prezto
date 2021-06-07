[ -s "${HOME}/.jabba/jabba.sh" ] && source "${HOME}/.jabba/jabba.sh"

if (( ! $+commands[jabba] )); then
  return 1
fi

jabba use graalvm@21.1.0
